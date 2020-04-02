import SwiftUI

struct TodayView: View {

    private let title: String = "Today"

    let cards: [Card]

    let onCardTap: (Card) -> Void

    let onUserPictureTap: () -> Void

    var body: some View {
        CardListSectionView(title: title,
                            cards: cards,
                            onCardTap: onCardTap,
                            onGetCardTap: onGetCardTap(_:),
                            trailingItem: { self.trailingButtonItem })
        .tabItem {
            TabItem(text: title, image: "house.fill")
        }
    }

    private var trailingButtonItem: some View {
        CircularImageButton(
            image: "userpicture",
            onTap: onUserPictureTap
        )
    }

    private func onGetCardTap(_ card: Card) {}
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView(cards: Card.sampleData, onCardTap: {_  in }, onUserPictureTap: {})
    }
}

