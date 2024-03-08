//
//  BookDetailHeaderImagesView.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 28/02/2024.
//

import SwiftUI

struct BookDetailHeaderImagesView: View {
    
    var bookImage : String
    @State private var selectImage : Int = 0
    
    var body: some View {
        VStack{
            ScrollViewReader{ proxy in
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(0..<3, id : \.self){ imageBook in
                            if selectImage == imageBook && selectImage == 0 {
                                Image(bookImage)
                                    .resizable()
                                    .frame(width: 200, height: 300)
                                    .padding(.leading, 100)
                                    .id(imageBook)
                                    .onTapGesture {
                                        withAnimation {
                                            selectImage = imageBook
                                            proxy.scrollTo(selectImage, anchor: .center)
                                        }
                                    }
                            }
                            else if selectImage == imageBook && selectImage == 2 {
                                Image(bookImage)
                                    .resizable()
                                    .frame(width: 200, height: 300)
                                    .padding(.trailing, 100)
                                    .id(imageBook)
                                    .onTapGesture {
                                        withAnimation {
                                            selectImage = imageBook
                                            proxy.scrollTo(selectImage, anchor: .center)
                                        }
                                    }
                            }
                            else if selectImage == imageBook {
                                Image(bookImage)
                                    .resizable()
                                    .frame(width: 200, height: 300)
                                    .id(imageBook)
                                    .onTapGesture {
                                        withAnimation {
                                            selectImage = imageBook
                                            proxy.scrollTo(selectImage, anchor: .center)
                                        }
                                    }
                            }
                            else {
                                Image(bookImage)
                                    .resizable()
                                    .frame(width: 150, height: 250)
                                    .id(imageBook)
                                    .onTapGesture {
                                        withAnimation {
                                            selectImage = imageBook
                                            proxy.scrollTo(selectImage, anchor: .center)
                                        }
                                    }
                            }
                        }
                    }
                }
            }
            
            HStack{
                ForEach(0..<3){ rec in
                    if selectImage == rec {
                        Rectangle()
                            .frame(width : 25, height: 3)
                            .foregroundColor(.black)
                    } else {
                        Rectangle()
                            .frame(width : 25, height: 3)
                            .foregroundColor(Color(.systemGray4))
                    }
                }
            }
            .padding(.top)
        }
        .padding(.top)

    }
}


#Preview {
    BookDetailHeaderImagesView(bookImage: "")
}
