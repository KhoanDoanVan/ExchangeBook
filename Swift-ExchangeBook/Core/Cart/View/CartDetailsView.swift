//
//  CartDetailsView.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 29/02/2024.
//

import SwiftUI

struct CartDetailsView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack{
            VStack{
                
                // header
                ScrollView(.vertical){
                    VStack(spacing : 20){
                        ForEach(0..<2){ book in
                            HStack(alignment : .top, spacing : 20){
                                Image("image-book2")
                                    .resizable()
                                    .frame(width: 120, height: 140)
                                                                
                                HStack(alignment : .top) {
                                    VStack(alignment : .leading){
                                        Text("How Innovation Works")
                                            .font(.system(size: 15))
                                            .fontWeight(.semibold)
                                        
                                        Text("by Matt RIDLEY")
                                            .font(.footnote)
                                            .foregroundStyle(Color(.systemGray))
                                        
                                        Text("40P")
                                            .fontWeight(.semibold)
                                    }
                                    .frame(maxWidth : 180)
                                    
                                    Spacer()
                                    
                                    // button delete
                                    Button {
                                        
                                    } label: {
                                        Image(systemName: "trash")
                                    }
                                    .foregroundColor(.black)
                                }
                                
                            }
                            
                            Divider()
                        }
                    }
                }
                .padding(.top)
                .padding(.horizontal, 20)
                
                Spacer()
                
                
                // payment
                VStack (spacing : 10){
                    HStack(spacing : 50){
                        VStack(alignment : .leading, spacing : 8){
                            Text("Item Value")
                            Text("Shipment Fee")
                        }
                        .font(.system(size: 15))
                        .fontWeight(.semibold)
                        
                        VStack(alignment : .leading, spacing : 8){
                            Text("100P")
                            Text("Collection on delivery")
                        }
                        .font(.system(size: 13))
                        
                        Spacer()
                    }
                    
                    Divider()
                    
                    HStack(spacing : 115){
                        Text("Total")
                            .font(.system(size: 15))
                            .fontWeight(.semibold)
                        
                        Text("100P")
                            .font(.system(size: 13))
                            .fontWeight(.semibold)
                        
                        Spacer()
                    }
                    .padding(.vertical)
                    
                    NavigationLink {
                        CheckoutView()
                    } label: {
                        Text("Proceed to Checkout")
                            .modifier(ButtonModifier())
                    }
                    .padding(.bottom)
                }
                .padding(.vertical, 20)
                .padding(.horizontal, 20)
                .background(Color(.systemGray4))
            }
            .navigationTitle("My Cart")
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
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    CartDetailsView()
}
