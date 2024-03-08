//
//  TabBarView.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 26/02/2024.
//

import SwiftUI

struct TabBarView: View {
    
    @State private var selected = 0
    
    var body: some View {
        NavigationStack{
            TabView(selection : $selected){
                
                ExploreView()
                .tabItem {
                        VStack{
                            Image(systemName: "book")
                                .environment(\.symbolVariants, selected == 0 ? .fill : .none)
                            
                            Text("EXPLORE")
                        }
                    }
                    .onAppear{
                        selected = 0
                    }
                    .tag(0)
                
                NavigationLink(destination: CheckoutView()){
                    Image(systemName: "plus")
                        .foregroundColor(.black)
                        .background(.red)

                    Text("EXCHANGE BOOK")
                }
                    .tabItem {
                        VStack{
                            Image(systemName: "plus")
                                .foregroundColor(.black)
                                .background(.red)

                            Text("EXCHANGE BOOK")
                        }
                    }
                    .onAppear{
                        selected = 1
                    }
                    .tag(1)
                
                Text("My Page")
                    .tabItem{
                        VStack{
                            Image(systemName: "person")
                                .environment(\.symbolVariants, selected == 2 ? .fill : .none)
                            
                            Text("MY PAGE")
                        }
                    }
                    .onAppear{
                        selected = 2
                    }
                    .tag(2)
            }
            .tint(.black)
        }
    }
}

#Preview {
    TabBarView()
}
