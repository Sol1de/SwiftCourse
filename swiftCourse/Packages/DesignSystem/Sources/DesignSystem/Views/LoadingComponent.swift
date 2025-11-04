import SwiftUI

struct LoadingComponent: View {
    @State private var rotate = false
    
    var body: some View {
        Circle()
            .trim(from: 0.2, to: 1)
            .stroke(Colors.ctaBackground, style: StrokeStyle(lineWidth: 4, lineCap: .round))
            .frame(width: 40, height: 40)
            .rotationEffect(.degrees(rotate ? 360 : 0))
            .onAppear {
                withAnimation(Animation.linear(duration: 1).repeatForever(autoreverses: false)) {
                    rotate = true
                }
            }
    }
}

#Preview {
    LoadingComponent()
}
