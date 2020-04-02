import SwiftUI

struct HeaderText: View {

    private let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }()

    let text: String

    var body: some View {
        VStack(alignment: .leading) {
            Text("\(Date(), formatter: dateFormatter)")
                .font(.body)
                .fontWeight(.bold)
                .foregroundColor(.gray)

            Spacer()

            Text(text)
                .font(.largeTitle)
                .fontWeight(.bold)
        }
    }
}
