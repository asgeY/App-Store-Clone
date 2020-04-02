import SwiftUI

struct CardView: View {

    let card: Card

    let width: CGFloat

    let height: CGFloat

    let rounded: Bool

    let onTap: ((Card) -> Void)?

    let onClose: (() -> Void)?

    let onGetButtonTap: () -> Void

    init(card: Card,
         width: CGFloat = UIScreen.main.bounds.width,
         height: CGFloat = 432,
         rounded: Bool = true,
         showCloseButton: Bool = true,
         onTap: ((Card) -> Void)? = nil,
         onClose: (() -> Void)? = nil,
         onGetButtonTap: @escaping () -> Void) {
        self.card = card
        self.width = width
        self.height = height
        self.rounded = rounded
        self.onTap = onTap
        self.onClose = onClose
        self.onGetButtonTap = onGetButtonTap
    }

    var body: some View {
        Group {
            if onTap != nil {
                PlainButton(action: { self.onTap?(self.card) }) {
                    self.contentView
                }
            } else {
                self.contentView
            }
        }
    }

    private var contentView: some View {
        ZStack(alignment: .topTrailing) {

            RoundedImage(image: card.image).frame(height: height)

            VStack {

                Spacer()

                VStack(alignment: .leading, spacing: 0) {
                    CardTitleView(text: card.header)
                        .frame(width: width / 2)

                    CardBottomContainer(card: card, onGetButtonTap: onGetButtonTap)
                }

            }
            .frame(height: height)

            if onClose != nil {
                closeButton
            }

        }
        .asCard(cornerRadius: rounded ? 16 : 0, shadowRadius: rounded ? 10 : 0)
    }

    private var closeButton: some View {
        PlainButton(action: { self.onClose?() }) {
            Image(systemName: "xmark.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
        }
        .foregroundColor(.white)
        .padding()
        .padding(.top, 8)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: Card.sampleData[1], rounded: true, onGetButtonTap: {})
    }
}
