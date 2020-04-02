import SwiftUI

struct PlainButton<ButtonContent: View>: View {

    let action: () -> Void

    let label: () -> ButtonContent

    var body: some View {
        Button(action: action, label: label)
            .buttonStyle(PlainButtonStyle())
    }
}
