//
//  SeeAllButtonView.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 28/02/2024.
//

import SwiftUI

struct SeeAllButtonView: View {
    var body: some View {
        VStack(spacing : 0){
            Text("See all")
                .font(.footnote)
                .foregroundStyle(Color(.systemGray))
            Rectangle()
                .frame(width: 40 , height: 1)
                .foregroundStyle(Color(.systemGray))
        }
    }
}

#Preview {
    SeeAllButtonView()
}
