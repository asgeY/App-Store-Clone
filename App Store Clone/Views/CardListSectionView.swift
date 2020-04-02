import SwiftUI

struct CardListSectionView<TrailingItem : View>: View {

    let title: String

    let cards: [Card]

    let onCardTap: (Card) -> Void

    let onGetCardTap: (Card) -> Void

    let trailingItem: (() -> TrailingItem)?

    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                HeaderView(
                    text: title,
                    trailingItem: trailingItem)

                ForEach(cards) { (card) in
                    CardView(card: card,
                             onTap: self.onCardTap,
                             onGetButtonTap: { self.onGetCardTap(card) })
                }

            }
            .padding([.leading, .trailing, .top])
        }
    }
}

struct CardListSectionView_Previews: PreviewProvider {

    static var trailingButtonItem: some View {
        CircularImageButton(
            image: "userpicture",
            onTap: {}
        )
    }

    static var previews: some View {
        CardListSectionView(title: "Today",
                            cards: Card.sampleData,
                            onCardTap: {_  in },
                            onGetCardTap: {_ in },
                            trailingItem: { self.trailingButtonItem })
    }
}
