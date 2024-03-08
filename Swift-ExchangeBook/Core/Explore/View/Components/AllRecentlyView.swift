//
//  AllRecentlyView.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 28/02/2024.
//

import SwiftUI

struct AllRecentlyView: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var showFilter = false
    @State private var width = (UIScreen.main.bounds.width / 2) - 30
    
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    HStack(spacing : 40){
                        Button{
                            
                        } label: {
                            HStack{
                                Text("Sort")
                                
                                Image("sort")
                            }
                        }
                        
                        Button{
                            showFilter = true
                        } label: {
                            HStack{
                                Text("Filter")
                                
                                Image("filter")
                            }
                        }
                    }
                    .foregroundColor(.black)
                    .padding(.top, 20)
                    
                    ScrollView(showsIndicators : false){
                        LazyVGrid(columns : [
                            GridItem(.flexible(), spacing: 2),
                            GridItem(.flexible(), spacing: 2)
                        ], spacing: 30){
                            ForEach(0..<7){ book in
                                VStack(alignment : .leading ,spacing : 0){
                                    NavigationLink{
                                        DetailView()
                                    } label: {
                                        ZStack{
                                            Image("image-book2")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width : width)
                                            
                                            VStack{
                                                HStack{
                                                    Text("18m ago")
                                                        .font(.footnote)
                                                        .padding(.horizontal, 3)
                                                        .padding(.vertical, 1)
                                                        .background(.white)
                                                    
                                                    Spacer()
                                                }
                                                
                                                Spacer()
                                                
                                                HStack{
                                                    Text("40P")
                                                        .font(.footnote)
                                                        .padding(5)
                                                        .fontWeight(.semibold)
                                                    
                                                    Spacer()
                                                }
                                                .frame(width : width)
                                                .background(.white.opacity(0.8))
                                            }
                                        }
                                        .padding(0)
                                        .foregroundStyle(.black)
                                    }

                                    
                                    Spacer()
                                    
                                    VStack(alignment : .leading, spacing : 0){
                                        Text("Mike and Honeys to ")
                                            .frame(maxWidth: width, alignment: .leading)
                                            .font(.system(size: 14))
                                            .padding(.bottom, 5)
                                            .padding(.leading, 3)
                                        
                                        Text("Film")
                                            .font(.footnote)
                                            .padding(.vertical, 2)
                                            .padding(.horizontal, 10)
                                            .background(Color(.systemGray6))
                                            .cornerRadius(10)
                                    }
                                    .frame(width : width)
                                    .padding(.bottom, 10)
                                                                    
                                    Button{
                                        
                                    } label: {
                                        Text("Add to Cart")
                                            .font(.system(size: 14))
                                            .foregroundStyle(.white)
                                            .fontWeight(.semibold)
                                        
                                    }
                                    .frame(width : width, height: 40)
                                    .background(.black)
                                }
                                .frame(width: width, height: 350)
                            }
                        }
                    }
                    .padding(.top)
                    
                    Spacer()
                }
                .navigationTitle("Recently Added")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar{
                    ToolbarItem(placement : .topBarLeading){
                        Button{
                            dismiss()
                        } label: {
                            Image("type=left")
                                .foregroundColor(.black)
                        }
                    }
                }
                .padding(.horizontal, 10)
                
                CartView()
            }
            .sheet(isPresented: $showFilter){
                FilterView()
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    AllRecentlyView()
}
