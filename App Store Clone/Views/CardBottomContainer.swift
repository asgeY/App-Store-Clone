import SwiftUI

struct CardBottomContainer: View {

    let card: Card

    let onGetButtonTap: () -> Void

    var body: some View {
        ZStack {
            BlurView(style: .light)
                .frame(height: 80)

            HStack {

                Image(card.image).asThumbnail()

                VStack(alignment: .leading) {
                    Text(card.title)
                        .font(.headline)
                        .foregroundColor(.white)
                    Text(card.subtitle)
                        .font(.subheadline)
                        .foregroundColor(.white)
                }

                Spacer()

                CapsuleButton(action: onGetButtonTap, text: "Get")
                    .padding([.trailing])
            }
        }
    }

}

struct CardBottomContainer_Previews: PreviewProvider {
    static var previews: some View {
        CardBottomContainer(card: Card.sampleData.first!, onGetButtonTap: {})
    }
}
