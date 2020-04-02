import SwiftUI

struct ContentView: View {

    private let cards: [Card] = Card.sampleData

    @State private var selectedCard: Card? = nil

    private var selectedCardExists: Bool {
        selectedCard != nil
    }

    var body: some View {
        ZStack(alignment: .top) {
            TabView() {
                TodayView(
                    cards: cards,
                    onCardTap: onCardTapped(_:),
                    onUserPictureTap: {}
                )
            }.blur(radius: selectedCardExists ? 8 : 0)

            if selectedCardExists {
                CardDetailView(
                    card: selectedCard!,
                    onClose: onSelectedCardClose
                )
            }
        }
    }

    private func onCardTapped(_ card: Card) {
        withAnimation {
            selectedCard = card
        }
    }

    private func onSelectedCardClose() {
        withAnimation {
            selectedCard = nil
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
