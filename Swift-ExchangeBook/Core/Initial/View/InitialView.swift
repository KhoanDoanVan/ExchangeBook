//
//  InitialView.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 25/02/2024.
//

import SwiftUI

struct InitialView: View {
    
    @State private var intializeOpen = true
    
    var body: some View {
        NavigationView {
            VStack{
                if intializeOpen {
                    Text("MaBOOK")
                        .font(.largeTitle)
                        .foregroundStyle(Color(.systemGray))
                        .onAppear{
                            DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                                withAnimation{
                                    intializeOpen = false
                                }
                            }
                        }
                } else {
                    NavigationLink(destination : SecondView()){
                        SecondView()
                    }
                }
            }
        }
    }
}

#Preview {
    InitialView()
}
