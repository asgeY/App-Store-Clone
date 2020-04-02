import SwiftUI

struct CardTitleView: View {

    let text: String

    var body: some View {
        Text(text.uppercased())
            .font(.system(size: 40))
            .fontWeight(.black)
            .foregroundColor(.white)
            .multilineTextAlignment(.leading)
            .padding()
    }
}

struct CardTitleView_Previews: PreviewProvider {
    static var previews: some View {
        CardTitleView(text: "APP OF THE DAY")
    }
}
