//
//  ViewController.swift
//  SpaceXflights
//
//  Created by Эл on 15.08.2022.
//

import UIKit

protocol ViewControllerProtocol: AnyObject {
    func displayViewModels(models: [ViewModelProtocol])
}

final class ViewController: UIViewController {
    
    private lazy var tableView : UITableView = {
        
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.dataSource = self
        tableView.delegate = self
        tableView.estimatedRowHeight = 100.0
        let header = StretchyTableHeaderView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.width))
        header.imageView.image = UIImage(named: "falconHeavy")
        tableView.tableHeaderView = header
        return tableView
        
    }()
    
    var presenter: SpacePresenterProtocol = SpacePresenter()
    
    private var viewModels : [ViewModelProtocol] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.backgroundColor = .black
        view.addSubview(tableView)
        tableView.register(RocketGeneralCell.self, forCellReuseIdentifier: SpaceCellIdentifiers.rocketGeneralCellId)
        
        addConstraint()
        presenter.getViewModels()
        
        
    }
    
    func addConstraint() {
        tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
}


}

// MARK: - UITableViewDataSource

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let viewModel = viewModels[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: viewModel.cellIdentifier) as! BaseCell
        cell.contentView.backgroundColor = .black
        cell.viewModel = viewModel
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModels.count
    }
}

//MARK: - ViewControllerProcotol

extension ViewController : ViewControllerProtocol {
    func displayViewModels(models: [ViewModelProtocol]) {
        viewModels = models
        tableView.reloadData()
    }
}

//MARK: - UITableViewDelegate

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        viewModels[indexPath.row].cellHeight
    }
}

//MARK: - UISCrollViewDelegate

extension ViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        guard let header = tableView.tableHeaderView as? StretchyTableHeaderView else {
            return
        }
        header.scrollViewDidScroll(scrollView: tableView)
    }
}
