//
//  SpacePresenter.swift
//  SpaceXflights
//
//  Created by Эл on 28.08.2022.
//

import Foundation

protocol SpacePresenterProtocol {
    func getViewModels()
}

class SpacePresenter: SpacePresenterProtocol {
    
    weak var viewController: ViewControllerProtocol?
    
    func getViewModels() {
        let viewModels: [ViewModelProtocol] = [RocketGeneralInfoViewModel(text: "Falcon Heavy", descript: ""),
                                               RocketGeneralInfoViewModel(text: "Первый Запуск", descript: "7 февраля, 2018"),
                                               RocketGeneralInfoViewModel(text: "Страна", descript: "США"),
                                               RocketGeneralInfoViewModel(text: "Стоимость запуска", descript: "90млн $"),
                                               RocketGeneralInfoViewModel(text: "ПЕРВАЯ СТУПЕНЬ", descript: ""),
                                               RocketGeneralInfoViewModel(text: "Количество двигателей", descript: "27"),
                                               RocketGeneralInfoViewModel(text: "Количество топлива", descript: "308,6 ton"),
                                               RocketGeneralInfoViewModel(text: "Время сгорания", descript: "593 sec"),
                                               RocketGeneralInfoViewModel(text: "ВТОРАЯ СТУПЕНЬ", descript: ""),
                                               RocketGeneralInfoViewModel(text: "Количество двигателей", descript: "1"),
                                               RocketGeneralInfoViewModel(text: "Количество топлива", descript: "243,2 ton"),
                                               RocketGeneralInfoViewModel(text: "Время сгорания", descript: "397 sec")]
        viewController?.displayViewModels(models: viewModels)
    }
}
