//
//  ButtonModifier.swift
//  Swift-ExchangeBook
//
//  Created by Đoàn Văn Khoan on 28/02/2024.
//

import SwiftUI

struct ButtonModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.system(size: 18))
            .fontWeight(.semibold)
            .frame(width: CGFloat(350), height: CGFloat(48))
            .foregroundColor(.white)
            .background(.black)
    }
}
