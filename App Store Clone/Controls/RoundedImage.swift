import SwiftUI

struct RoundedImage: View {

    let image: String

    var body: some View {
        Image(image)
            .resizable()
            .scaledToFill()
            .frame(minWidth: .zero,
                   maxWidth: .infinity)
            .clipped()
    }
}
