//
//  SearchView.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 27/02/2024.
//

import SwiftUI

struct SearchView: View {
    
    init(search: SearchViewModel) {
        self.search = search
    }
    
    @ObservedObject var search : SearchViewModel
    
    var body: some View {
        NavigationStack{
            ZStack{
                if search.search != ""{
                    VStack{
                        VStack{
                            HStack{
                                Text("Books")
                                    .font(.system(size: 20))
                                    .fontWeight(.semibold)
                                
                                Spacer()
                                
                                Button{
                                    
                                } label: {
                                    SeeAllButtonView()
                                }
                            }
                            
                            VStack(spacing : 15){
                                ForEach(0..<3){ search in
                                    HStack{
                                        NavigationLink{
                                            DetailView()
                                        } label: {
                                            Text("Morning Smile")
                                                .font(.system(size: 15))
                                        }
                                        
                                        Spacer()
                                    }
                                }
                            }
                            .padding(.vertical)
                            .foregroundColor(.black)
                            
                            Divider()
                            
                            HStack{
                                Text("Recent Searches")
                                    .font(.system(size: 20))
                                    .fontWeight(.semibold)
                                
                                Spacer()
                                
                                Button{
                                    
                                } label: {
                                    VStack(spacing : 0){
                                        Text("Delete history")
                                            .font(.footnote)
                                            .foregroundStyle(.red)
                                        Rectangle()
                                            .frame(width: 80 , height: 1)
                                            .foregroundStyle(.red)
                                    }
                                }
                            }
                        }
                        .padding(.top, 150)
                        .padding(.horizontal, 20)
                        
                        Spacer()
                    }
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                }
                
                VStack{
                    HStack{
                        HStack(spacing : 10){
                            Image("search")
                                .padding()
                            
                            TextField("Book name or writer name", text : $search.search)
                            
                            if search.search != "" {
                                Button{
                                    withAnimation{
                                        search.search = ""
                                    }
                                } label: {
                                    Image("deleteAll")
                                }
                                .padding(.trailing)
                            }
                        }
                        .frame(width: search.search != "" ? 300 : 350, height: 50)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.top, search.search != "" ? 80 : 20)
                        
                        if search.search != "" {
                            Button{
                                withAnimation {
                                    search.search = ""
                                }
                            } label: {
                                VStack(spacing : 0){
                                    Text("Cancel")
                                        .font(.system(size: 15))
                                    
                                    Rectangle()
                                        .frame(width : 45, height : 1)
                                        .padding(.top, -2)
                                }
                                .foregroundColor(.black)
                            }
                            .padding(.top, search.search != "" ? 80 : 20)
                        }
                    }
                    
                    if search.search != "" {
                        Spacer()
                    }
                }
            }
        }
    }
}

#Preview {
    SearchView(search: SearchViewModel(search: "d"))
}
