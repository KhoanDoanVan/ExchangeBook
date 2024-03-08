//
//  SecondView.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 25/02/2024.
//

import SwiftUI

struct SecondView: View {
    @State private var showingSheetCountry = false
    @State private var showingSheetLanguage = false
    @State private var acceptNext = false
    @State private var showPermissionAlert = false
    
    @StateObject var countryViewModel = CountrySelectViewModel()
    
            
    var body: some View {
        VStack{
            VStack{
                HStack{
                    Text("MaBOOK")
                        .font(.largeTitle)
                        .foregroundStyle(.black)
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                Image("image-thumb1")
                    .padding(.bottom, 20)
        
                HStack{
                    Text("I want to exchange books in")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                        .padding(.vertical)
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                // btn country
                Button{
                    showingSheetCountry.toggle()
                } label: {
                    VStack{
                        SelectTagView(title :  countryViewModel.selectedCountry ?? "Country")
                            .foregroundColor(countryViewModel.selectedCountry != nil ? .black : Color(.systemGray))
                        
                        Rectangle()
                            .frame(width: 350, height: 1)
                            .foregroundColor(countryViewModel.selectedCountry != nil ? .black : Color(.systemGray))
                    }
                }
                .sheet(isPresented : $showingSheetCountry) {
                    CountrySelectView(viewModel: countryViewModel)
                }
                .padding(.vertical)
                .padding(.horizontal)
                
                // btn book language
                Button{
                    showingSheetLanguage.toggle()
                } label: {
                    VStack{
                        SelectTagView(title : countryViewModel.selectedLanguage ?? "Book Language")
                            .foregroundColor(countryViewModel.selectedLanguage != nil ? .black : Color(.systemGray))
                        
                        Rectangle()
                            .frame(width: 350, height: 1)
                            .foregroundColor(countryViewModel.selectedLanguage != nil ? .black : Color(.systemGray))
                    }
                }
                .sheet(isPresented : $showingSheetLanguage){
                    LanguageSelectView(viewModel: countryViewModel)
                }
                .padding(.horizontal)
                
                Spacer()
                
                NavigationLink {
                    PermissionView()
                } label: {
                    if (countryViewModel.selectedCountry != nil) && (countryViewModel.selectedLanguage != nil) {
                        Text("Ready to go")
                            .font(.system(size: 18))
                            .fontWeight(.semibold)
                            .frame(width: CGFloat(350), height: CGFloat(48))
                            .foregroundColor(.white)
                            .background(.black)
                    } else {
                        Text("Ready to go")
                            .font(.system(size: 18))
                            .fontWeight(.semibold)
                            .frame(width: CGFloat(350), height: CGFloat(48))
                            .foregroundColor(.white)
                            .background(Color(.systemGray))
                    }
                }
                .disabled(countryViewModel.selectedCountry == nil && countryViewModel.selectedLanguage == nil)
                .padding(.bottom)
            }
        }
        .padding()
    }
}

#Preview {
    SecondView()
}
