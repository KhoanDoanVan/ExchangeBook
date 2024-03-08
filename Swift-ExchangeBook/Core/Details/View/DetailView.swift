//
//  DetailView.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 28/02/2024.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.dismiss) private var dismiss
    
    @StateObject var viewModel = DetailViewModel(book: Book(name: "How innovation works", author: "Matt RIDLEY", desription: "Innovation is the main event of the modern age, the reason we experience both dramatic improvements in our living", point: 40, page: 200, image: "image-book2"), liked: true)
    
    @State private var selectImage : Int = 0
    
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    
                    BookDetailHeaderImagesView(bookImage : viewModel.book.image)
                    
                    VStack(alignment : .leading, spacing: 5){
                        Text("Poetry")
                            .font(.footnote)
                            .frame(width: 60, height: 25)
                            .background(Color(.systemGray6))
                            .cornerRadius(15)
                        
                        Text(viewModel.book.name)
                            .font(.system(size: 20))
                            .fontWeight(.semibold)
                        
                        Text("by \(viewModel.book.author)")
                            .font(.system(size: 17))
                            .foregroundStyle(Color(.systemGray2))
                        
                        ScrollView(.vertical, showsIndicators: false){
                            VStack{
                                Text(viewModel.book.desription)
                                    .font(.system(size: 15))
                                
                                Spacer()
                            }
                        }
                        .frame(height : 80)
                        
                        VStack(alignment : .leading){
                            HStack{
                                Text("Condition :")
                                    .fontWeight(.semibold)
                                Text("Used ,little old")
                            }
                            
                            HStack{
                                Text("Pages :")
                                    .fontWeight(.semibold)
                                Text("\(viewModel.book.page)")
                            }
                            
                            HStack{
                                Text("Dimensions :")
                                    .fontWeight(.semibold)
                                Text("6 x 1.29 x 9 inches")
                            }
                        }
                        .font(.footnote)
                        .padding(.top)
                    }
                    .padding(20)
                    
                    Button {
                        
                    } label: {
                        Text("Add to Cart (\(viewModel.book.point) Points)")
                            .modifier(ButtonModifier())
                    }
                                    
                    Spacer()
                }
                .navigationTitle("Book Details")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarBackButtonHidden(true)
                .toolbar{
                    ToolbarItem(placement : .topBarTrailing){
                        Button{
                            withAnimation{
                                if viewModel.liked == true {
                                    viewModel.liked = false
                                } else {
                                    viewModel.liked = true
                                }
                            }
                        } label: {
                            if viewModel.liked == true {
                                Image("Liked=on")
                            } else {
                                Image("Liked=off")
                            }
                        }
                        .padding()
                    }
                    
                    ToolbarItem(placement : .topBarLeading){
                        Button{
                            dismiss()
                        } label: {
                            Image("type=left")
                                .foregroundColor(.black)
                        }
                    }
                }
                
                CartView()
            }
        }
    }
}

#Preview {
    DetailView()
}
