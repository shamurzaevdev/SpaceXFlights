//
//  ViewModelClasses.swift
//  SpaceXflights
//
//  Created by Эл on 28.08.2022.
//

import Foundation

final class RocketGeneralInfoViewModel: BaseViewModel {
    let text: String
    let descript: String
    init(text: String, descript: String) {
        self.text = text
        self.descript = descript
    }
    
    
    override var cellIdentifier: String {
        return SpaceCellIdentifiers.rocketGeneralCellId
    }
}

