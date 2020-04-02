import SwiftUI

struct CircularImageButton: View {

    let image: String

    let onTap: () -> Void

    var body: some View {
        PlainButton(action: onTap) {
            CircularImage(self.image)
                .frame(width: 32, height: 32)
        }
    }
}
