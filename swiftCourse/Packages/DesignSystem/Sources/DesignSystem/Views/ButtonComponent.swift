//
//  Button.swift
//  DesignSystem
//
//  Created by DELMAS Olivier on 04/11/2025.
//

import SwiftUI

struct ButtonComponent: View {
    let label: String
    let icon: Image?
    
    init(label: String, icon: Image? = nil) {
        self.icon = icon
        self.label = label
    }
    
    var body: some View {
        Button(action: {}) {
            if (icon != nil) {
                icon
            }
            Text(label)
                .foregroundColor(.white)
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 4)
        .background(Colors.ctaBackground)
        .cornerRadius(.infinity)
        
        
        
    }
}

#Preview {
    ButtonComponent(label: "Hello World", icon: Image(.play))
}
