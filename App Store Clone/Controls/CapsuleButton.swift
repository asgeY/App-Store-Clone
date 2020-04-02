import SwiftUI

struct CapsuleButton: View {

    let action: () -> Void

    let text: String

    var body: some View {
        PlainButton(action: action) {
            Text(self.text)
                .fontWeight(.bold)
                .padding(8)
                .frame(width: 65)
                .background(Color.white)
                .foregroundColor(.blue)
                .clipShape(Capsule())
        }
    }
}
