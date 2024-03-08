//
//  DeliveryView.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 01/03/2024.
//

import SwiftUI

struct DeliveryView: View {
    var body: some View {
        VStack{
            HStack{
                Text("Delivery Address")
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button{
                    
                } label: {
                    Text("CHANGE")
                        .font(.system(size: 15))
                        .foregroundStyle(.black)
                        .padding(5)
                        .overlay{
                            Rectangle()
                                .stroke(.gray, lineWidth : 2)
                        }
                }
            }
            
            VStack(alignment : .leading, spacing : 20){
                VStack(alignment : .leading){
                    Text("Jane Larson")
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .frame(width : UIScreen.main.bounds.width - 40)
                VStack{
                    Text("020-3499-39100")
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .frame(width : UIScreen.main.bounds.width - 40)
                VStack{
                    Text("K-28 West Sheffield Dr. Oceanside, CA 92056, USA")
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .frame(width : UIScreen.main.bounds.width - 40)
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    DeliveryView()
}
