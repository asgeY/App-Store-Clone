import SwiftUI

struct CardDetailView: View {

    let card: Card

    let onClose: () -> Void

    var body: some View {
        ScrollView {
            VStack {
                CardView(
                    card: card,
                    height: UIScreen.main.bounds.height / 1.6,
                    rounded: false,
                    onClose: onClose,
                    onGetButtonTap: {}
                )

                Text(card.description)
                    .asCardDescription()

                Spacer()
            }
            .background(Color("background"))
        }
        .frame(width: UIScreen.main.bounds.width)
        .edgesIgnoringSafeArea(.all)
        .statusBar(hidden: true)
        .animation(.spring())
        .transition(.scale)
    }
}

struct CardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetailView(card: Card.sampleData.first!, onClose: {})
    }
}

