//
//  CheckoutView.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 01/03/2024.
//

import SwiftUI

struct CheckoutView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack{
            VStack{
                VStack{
                    DeliveryView()
                    
                    Divider()
                    
                    ShipmentView()
                }
                .padding(20)
                
                Spacer()
                
                // payment below
                VStack{
                    VStack (spacing : 10){
                        
                        HStack(spacing : 33){
                            Text("Current Balance")
                                .font(.system(size: 15))
                                .fontWeight(.semibold)
                            
                            Text("120P")
                                .font(.system(size: 13))
                            
                            
                            Spacer()
                        }
                        
                        Divider()
                        
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
                        .padding(.vertical)
                        
                        Divider()
                        
                        HStack(spacing : 112){
                            Text("Total")
                                .font(.system(size: 15))
                                .fontWeight(.semibold)
                            
                            Text("100P")
                                .font(.system(size: 13))
                                .fontWeight(.semibold)
                            
                            Spacer()
                        }
                        .padding(.vertical)
                        
                        Button {
                            
                        } label: {
                            Text("Proceed to Checkout")
                                .modifier(ButtonModifier())
                        }
                        .padding(.bottom)
                        
                        Text("By placing order, you agree to our terms and conditions, privacy terms and return policies.")
                            .multilineTextAlignment(.center) // multi text
                            .font(.footnote)
                            .foregroundStyle(Color(.systemGray))
                            .padding(.top, -20)
                    }
                    .padding(.vertical, 20)
                    .padding(.horizontal, 20)
                    .background(Color(.systemGray4))
                }
            }
            .navigationTitle("Checkout")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement : .topBarLeading){
                    Button{
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundColor(.black)
                            .padding()
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    CheckoutView()
}
