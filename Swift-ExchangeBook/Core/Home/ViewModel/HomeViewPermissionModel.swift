//
//  HomeViewPermissionModel.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 26/02/2024.
//

import Foundation
import SwiftUI

class HomeViewPermissionModel: ObservableObject{
    
    @Published var showAlertPermission = true
    @Published var showAlertNotification  = false
    
    func changedAlertPermission(_ permission : Bool){
        self.showAlertPermission = permission
    }
    
    func changedAlertNotification(_ notification : Bool){
        self.showAlertNotification = notification
    }
}
