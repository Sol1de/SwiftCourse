//
//  Button.swift
//  DesignSystem
//
//  Created by DELMAS Olivier on 04/11/2025.
//

import SwiftUI

public struct ButtonComponent: View {
    let label: String
    let icon: Image?
    let action: () -> Void
    
    public init(label: String, icon: Image? = nil, action: @escaping () -> Void) {
        self.icon = icon
        self.label = label
        self.action = action
    }
    
    public var body: some View {
        Button(action: action) {
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
    ButtonComponent(label: "Hello World", icon: Image(.play), action: {})
}
