//
//  CellIdentifiable.swift
//  SpaceXflights
//
//  Created by Эл on 28.08.2022.
//

import Foundation
import UIKit

protocol CellProtocol {
    var viewModel: ViewModelProtocol? { get set }

    
}

class BaseCell: UITableViewCell, CellProtocol {
    var viewModel: ViewModelProtocol? {
        didSet {
            updateViews()
        }
    }
    func updateViews() {}
}







