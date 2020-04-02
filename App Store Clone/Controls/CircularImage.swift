import SwiftUI

struct CircularImage: View {
    
    let name: String

    init(_ name: String) {
        self.name = name
    }

    var body: some View {
        Image(name)
            .resizable()
            .clipShape(Circle())
    }
}
