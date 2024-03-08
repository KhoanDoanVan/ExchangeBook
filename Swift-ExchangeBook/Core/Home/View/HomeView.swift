//
//  HomeView.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 26/02/2024.
//

import SwiftUI
import AppTrackingTransparency

struct HomeView: View {
        
    @StateObject private var viewModel = HomeViewPermissionModel()
        
    var body: some View {
        NavigationStack{
            TabBarView()
        }
        .alert(isPresented : $viewModel.showAlertPermission){
            Alert(title: Text("MaBook would like permissions to track you accross apps and websites owned by other companies"),
                  message: Text("This allows MaBook to provide you with a better ads experience."),
                  primaryButton: .default(
                    Text("Ask App Not to Track")
                  ),
                  secondaryButton: .default(
                    Text("Allow Tracking")
                  )
            )
        }
        .navigationBarBackButtonHidden(true)
    }
}




#Preview {
    HomeView()
}
