//
//  PermissionView.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 26/02/2024.
//

import SwiftUI

struct PermissionView: View {
    
    @State private var showPermission = false
    @State private var showNotification = false
    
    var body: some View {
        NavigationStack{
            VStack{
                VStack{
                    Text("We'd love to improve experience with MaBOOK, so would you mind granting us these permissions?")
                        .font(.system(size: 18))
                        .fontWeight(.regular)
                        .padding(.bottom, 50)
                                    
                    Divider()
                    
                    VStack{
                        VStack{
                            Image("tracking")
                            Text("Tracking")
                                .fontWeight(.semibold)
                        }
                        .padding()
                        
                        Text("We need to grant us permission to track you so that we can recommend your customizes content")
                            .font(.system(size: 18))
                            .foregroundStyle(Color(.systemGray))
                    }
                    .padding(.bottom)
                    
                    Divider()
                    
                    VStack{
                        VStack{
                            Image("notification")
                            Text("Notifications")
                                .fontWeight(.semibold)
                        }
                        .padding()
                        
                        Text("You need to turn on the notifications to get the results of point estimation regarding your book")
                            .font(.system(size: 18))
                            .foregroundStyle(Color(.systemGray))
                    }
                    .padding(.bottom)
                    
                    Divider()
                    
                    Spacer()
                    
//                    NavigationLink(destination : HomeView(), isActive: $showPermission){
//                        EmptyView()
//                    }
                    
                    NavigationLink {
//                        showPermission = true
                        HomeView()
                    } label: {
                        
                        Text("Ready to go")
                            .font(.system(size: 18))
                            .fontWeight(.semibold)
                            .frame(width: CGFloat(350), height: CGFloat(48))
                            .foregroundColor(.white)
                            .background(.black)
                    }
                }
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    PermissionView()
}
