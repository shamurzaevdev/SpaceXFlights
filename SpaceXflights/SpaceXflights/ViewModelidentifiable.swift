//
//  ViewModelidentifiable.swift
//  SpaceXflights
//
//  Created by Эл on 28.08.2022.
//

import Foundation
import UIKit

protocol ViewModelProtocol {
    
    var cellHeight : CGFloat { get  }
    
    var cellIdentifier : String { get }
}

class BaseViewModel : ViewModelProtocol {
    var cellHeight : CGFloat {  UITableView.automaticDimension }
    var cellIdentifier : String { "" }
}

/// Идентификаторы ячеек для переиспользования
enum SpaceCellIdentifiers {
  static let rocketGeneralCellId = "rocketGeneralCellId"
  
}

