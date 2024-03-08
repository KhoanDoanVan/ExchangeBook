//
//  RecentlyView.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 27/02/2024.
//

import SwiftUI

struct MostViewedView: View {
    var body: some View {
        VStack{
            HStack{
                Text("Recently Added")
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button{
                    
                } label: {
                    VStack (spacing : 0){
                        Text("See all")
                            .font(.footnote)
                            .foregroundStyle(Color(.systemGray))
                        Rectangle()
                            .frame(width: 40 , height: 1)
                            .foregroundStyle(Color(.systemGray))
                    }
                }
                .foregroundColor(.black)
            }
            .padding(.top, 35)
            .padding(.horizontal, 20)
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing : 20){
                    ForEach(0..<8){ recentlybook in
                        if recentlybook == 0 {
                            Button{
                                
                            } label: {
                                VStack(alignment : .leading){
                                    ZStack{
                                        Image("image-book2")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 120, height: 150)
                                        
                                        VStack{
                                            HStack{
                                                HStack(spacing : 0){
                                                    Image("eye")
                                                    Text("202")
                                                        .font(.footnote)
                                                }
                                                .frame(width: 60)
                                                .background(.white)
                                                .padding(1)
                                                
                                                Spacer()
                                            }
                                            
                                            Spacer()
                                        }
                                        .foregroundColor(.black)
                                        
                                        VStack{
                                            Spacer()
                                            ZStack{
                                                Rectangle()
                                                    .frame(width: 120, height: 30)
                                                    .foregroundStyle(.white.opacity(0.8))
                                                
                                                HStack{
                                                    Text("40P")
                                                        .font(.footnote)
                                                        .fontWeight(.semibold)
                                                        .padding(.leading, 10)
                                                    Spacer()
                                                }
                                            }
                                        }
                                    }
                                    .frame(width: 120, height: 180)
                                    
                                    Text("The Psychology of monkey")
                                        .font(.system(size: 15))
                                    
                                    Text("Worldwide")
                                        .font(.footnote)
                                        .frame(width: 80, height: 30)
                                        .background(Color(.systemGray5))
                                        .cornerRadius(10)
                                    
                                    Spacer()
                                }
                            }
                            .frame(width: 120, height: 280)
                            .foregroundColor(.black)
                            .padding(.leading, 20)
                        } else {
                            Button{
                                
                            } label: {
                                VStack(alignment : .leading){
                                    ZStack{
                                        Image("image-book2")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 120, height: 150)
                                        
                                        VStack{
                                            HStack{
                                                HStack(spacing : 0){
                                                    Image("eye")
                                                    Text("202")
                                                        .font(.footnote)
                                                }
                                                .frame(width: 60)
                                                .background(.white)
                                                .padding(1)
                                                
                                                Spacer()
                                            }
                                            
                                            Spacer()
                                        }
                                        .foregroundColor(.black)
                                        
                                        VStack{
                                            Spacer()
                                            ZStack{
                                                Rectangle()
                                                    .frame(width: 120, height: 30)
                                                    .foregroundStyle(.white.opacity(0.8))
                                                
                                                HStack{
                                                    Text("40P")
                                                        .font(.footnote)
                                                        .fontWeight(.semibold)
                                                        .padding(.leading, 10)
                                                    Spacer()
                                                }
                                            }
                                        }
                                    }
                                    .frame(width: 120, height: 180)
                                    
                                    Text("The Psychology of monkey")
                                        .font(.system(size: 15))
                                    
                                    Text("Worldwide")
                                        .font(.footnote)
                                        .frame(width: 80, height: 30)
                                        .background(Color(.systemGray5))
                                        .cornerRadius(10)
                                    
                                    Spacer()
                                }
                            }
                            .frame(width: 120, height: 280)
                            .foregroundColor(.black)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    MostViewedView()
}

