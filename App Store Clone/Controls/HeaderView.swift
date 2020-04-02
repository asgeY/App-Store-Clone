import SwiftUI

struct HeaderView<TrailingItem : View>: View {

    private let text: String

    private let height: CGFloat

    private let trailingItem: (() -> TrailingItem)?

    init(text: String, height: CGFloat = 64, trailingItem: (() -> TrailingItem)? = nil) {
        self.text = text
        self.height = height
        self.trailingItem = trailingItem
    }

    var body: some View {
        HStack(alignment: .top) {

            HeaderText(text: text)

            Spacer()

            VStack {
                Spacer()
                trailingItem?()
            }
        }
        .frame(height: height)
    }
}
