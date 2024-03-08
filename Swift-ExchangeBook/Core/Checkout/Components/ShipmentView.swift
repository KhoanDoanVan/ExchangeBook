//
//  ShipmentView.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 01/03/2024.
//

import SwiftUI

struct ShipmentView: View {
    var body: some View {
        VStack(spacing : 20){
            Text("Shipment Info")
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("Collect on delivery (Aproximately $12)")
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("We will send you an email with the tracking number when we ship your order.")
                .font(.footnote)
                .foregroundStyle(Color(.systemGray))
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.vertical)
    }
}

#Preview {
    ShipmentView()
}
