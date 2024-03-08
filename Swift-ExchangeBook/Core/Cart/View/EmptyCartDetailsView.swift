//
//  EmptyCartDetailsView.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 01/03/2024.
//

import SwiftUI

struct EmptyCartDetailsView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack{
            VStack{
                VStack{
                    VStack(spacing : 10){
                        Image(systemName: "creditcard")
                            .font(.system(size: 60))
                        
                        Text("your balance")
                        
                        Text("40P")
                            .font(.title2)
                            .fontWeight(.semibold)
                    }
                    .frame(width: 150, height: 150)
                    .padding()
                    .background(Color(.systemGray5))
                    .cornerRadius(20)
                    
                    VStack{
                        Text("You need 60 more points to get a free book.")
                            .font(.footnote)
                            .foregroundStyle(.red)
                        
                        Text("You should exchanges book to gain points.")
                            .font(.footnote)
                    }
                    .padding(.top)
                }
                .padding(.top, 40)
                
                Spacer()
                
                // button bottom
                Button{
                    
                } label: {
                    Text("Exchange Books")
                        .modifier(ButtonModifier())
                }
                .padding(.bottom)
            }
            .navigationTitle("Insufficient Balance")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement : .topBarLeading){
                    Button{
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .padding()
                    }
                    .foregroundColor(.black)
                }
            }
        }
    }
}

#Preview {
    EmptyCartDetailsView()
}
