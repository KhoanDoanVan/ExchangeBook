//
//  LanguageSelectView.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 25/02/2024.
//

import SwiftUI

struct LanguageSelectView: View {
    @Environment(\.dismiss) var dismiss
    @StateObject var viewModel : CountrySelectViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    HStack{
                        TextField("Search", text: $viewModel.search)
                            .font(.system(size: 20))
                            .frame(width: 330, height: 32)
                        
                        Spacer()
                        
                        Button{
                            viewModel.search = ""
                        } label: {
                            if viewModel.search.isEmpty {
                                Image(systemName: "xmark")
                                    .foregroundColor(.white)
                            } else {
                                Image(systemName: "xmark")
                                    .foregroundColor(.black)
                            }
                        }
                        .disabled(viewModel.search.isEmpty)
                    }
                    .padding(.horizontal, 20)
                    
                    Rectangle()
                        .frame(width: 350, height: 1)
                        .background(.black)
                }
                .padding(.top, 10)
                
                ScrollView() {
                    VStack(alignment: .leading) {
                        if viewModel.search != "" {
                            ForEach(viewModel.languages.filter {
                                $0.lowercased().contains(viewModel.search.lowercased())
                            }, id: \.self) { language in
                                HStack{
                                    Button {
                                        viewModel.selectLanguage(language)
                                        viewModel.search = ""
                                        dismiss()
                                    } label: {
                                        Text("\(language)")
                                    }
                                    .padding(.vertical, 5)
                                    .foregroundColor(.black)
                                    
                                    Spacer()
                                }
                                .padding(.horizontal, 20)
                            }
                        } else {
                            ForEach( viewModel.languages, id: \.self) { language in
                                HStack{
                                    Button {
                                        viewModel.selectLanguage(language)
                                        dismiss()
                                    } label: {
                                        Text("\(language)")
                                    }
                                    .padding(.vertical, 5)
                                    .foregroundColor(.black)
                                    
                                    Spacer()
                                }
                                .padding(.horizontal, 20)
                            }
                        }
                    }
                }
                .padding(.top)
                
                Spacer()
            }
            .navigationTitle("Choose Book Language")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem {
                    Button {
                        viewModel.search = ""
                        dismiss()
                    } label: {
                        Image("close")
                    }
                }
            }
        }
    }
}

#Preview {
    LanguageSelectView(viewModel: CountrySelectViewModel())
}



