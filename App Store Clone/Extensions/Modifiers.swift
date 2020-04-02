import SwiftUI

extension Image {
    func asThumbnail(size: CGFloat = 48, cornerRadius: CGFloat = 8) -> some View {
        resizable()
            .frame(width: size, height: size)
            .cornerRadius(cornerRadius)
            .padding()
    }
}

extension ZStack {
    func asCard(cornerRadius: CGFloat = 16, shadowRadius: CGFloat = 10) -> some View {
        clipped()
            .cornerRadius(cornerRadius)
            .shadow(radius: shadowRadius)
    }
}

extension Text {
    func asCardDescription() -> some View {
        foregroundColor(Color("text"))
            .font(.system(size: 22))
            .fontWeight(.regular)
            .padding()
    }
}
