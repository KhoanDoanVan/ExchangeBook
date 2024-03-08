//
//  FilterView.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 28/02/2024.
//

import SwiftUI

struct FilterView: View {
    
    @Environment(\.dismiss) var dismiss

    @StateObject private var viewModelFilter = FilterViewModel(availableBook: true, genres: "Catagories", rangePointMin: "", rangePointMax: "" , iconGenre: "type=down", iconRange: "type=down")
    
    var body: some View {
        NavigationStack{
            VStack{
                VStack(spacing : 20){
                    HStack{
                        Toggle("Show only available books", isOn: $viewModelFilter.availableBook)
                    }
                    
                    Button{
                        withAnimation{
                            if viewModelFilter.iconGenre == "type=up" {
                                viewModelFilter.iconGenre = "type=down"
                            } else {
                                viewModelFilter.iconGenre = "type=up"
                            }
                        }
                    } label: {
                        HStack{
                            Text(viewModelFilter.genres)
                            
                            Spacer()
                            
                            Image(viewModelFilter.iconGenre)
                        }
                    }
                    
                    if viewModelFilter.iconGenre == "type=up" {
                        ScrollView{
                            List(viewModelFilter.listGenre, id : \.self){genre in
                                Button{
                                    withAnimation{
                                        viewModelFilter.genres = genre
                                        viewModelFilter.iconGenre = "type=down"
                                    }
                                } label: {
                                    Text(genre)
                                }
                            }
                            .listStyle(PlainListStyle())
                            .frame(width: 350, height: 200)
                            .background(.red)
                            .padding(0)
                        }
                        .frame(width: 350, height: 200)
                        .padding(0)
                    }
                    
                    Button{
                        withAnimation{
                            if viewModelFilter.iconRange == "type=up" {
                                viewModelFilter.iconRange = "type=down"
                            } else {
                                viewModelFilter.iconRange = "type=up"
                            }
                        }
                    } label: {
                        HStack{
                            Text("Point Range")
                            
                            Spacer()
                            
                            Image(viewModelFilter.iconRange)
                        }
                    }
                    
                    if viewModelFilter.iconRange == "type=up" {
                        HStack{
                            HStack{
                                Text("Min.")
                                    .font(.footnote)
                                    .foregroundStyle(Color(.systemGray))
                                
                                TextField("0", text: $viewModelFilter.rangePointMin)
                            }
                            .frame(width: 150)
                            .padding(.vertical, 5)
                            .padding(.horizontal, 10)
                            .background(Color(.systemGray6))
                            .cornerRadius(15)
                            
                            Spacer()
                            
                            HStack{
                                Text("Max.")
                                    .font(.footnote)
                                    .foregroundStyle(Color(.systemGray))
                                
                                TextField("0", text: $viewModelFilter.rangePointMax)
                            }
                            .frame(width: 150)
                            .padding(.vertical, 5)
                            .padding(.horizontal, 10)
                            .background(Color(.systemGray6))
                            .cornerRadius(15)
                        }
                    }
                }
                .padding()
                .foregroundColor(.black)
                
                Spacer()
                
                Button{
                    dismiss()
                } label: {
                    Text("Done")
                        .modifier(ButtonModifier())
                }
                .padding(.bottom)
            }
            .navigationTitle("Choose Filter")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem{
                    Button{
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .padding()
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

#Preview {
    FilterView()
}
