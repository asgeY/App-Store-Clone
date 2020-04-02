import Foundation

struct Card: Identifiable {
    let id = UUID()
    let header: String
    let title: String
    let description: String
    let subtitle: String
    let image: String

    init(header: String, title: String, subtitle: String, description: String, image: String) {
        self.header = header
        self.title = title
        self.subtitle = subtitle
        self.description = description
        self.image = image
    }

    static let sampleData: [Card] =
        [Card(header: "Game of the day", title: "Retro Game", subtitle: "Games", description: commonDesc, image: "1"),
         Card(header: "App of the day", title: "Nature shots", subtitle: "Camera", description: commonDesc, image: "2"),
         Card(header: "App culture", title: "Social Network", subtitle: "Entertainment", description: commonDesc, image: "3"),
         Card(header: "Apps we ❤️", title: "Take a deep breath", subtitle: "Zen", description: commonDesc, image: "4")]

    static let commonDesc = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\n\nEtiam tempor orci eu lobortis elementum nibh. Cras sed felis eget velit aliquet sagittis. Nibh sit amet commodo nulla facilisi nullam vehicula ipsum. Pretium fusce id velit ut tortor pretium viverra suspendisse potenti. Mi quis hendrerit dolor magna eget est lorem. Gravida dictum fusce ut placerat orci nulla pellentesque. Mauris sit amet massa vitae tortor condimentum lacinia quis vel. Aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque.\n\nEget dolor morbi non arcu risus. Placerat duis ultricies lacus sed turpis tincidunt. Aliquet sagittis id consectetur purus. Orci phasellus egestas tellus rutrum tellus pellentesque eu. Morbi tristique senectus et netus. Elementum facilisis leo vel fringilla est ullamcorper eget. Pellentesque elit eget gravida cum sociis. Ultricies tristique nulla aliquet enim tortor at. Risus viverra adipiscing at in. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Etiam tempor orci eu lobortis elementum nibh.\n\nCras sed felis eget velit aliquet sagittis. Nibh sit amet commodo nulla facilisi nullam vehicula ipsum. Pretium fusce id velit ut tortor pretium viverra suspendisse potenti. Mi quis hendrerit dolor magna eget est lorem. Gravida dictum fusce ut placerat orci nulla pellentesque. Mauris sit amet massa vitae tortor condimentum lacinia quis vel. Aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque. Eget dolor morbi non arcu risus. Placerat duis ultricies lacus sed turpis tincidunt.\n\nAliquet sagittis id consectetur purus. Orci phasellus egestas tellus rutrum tellus pellentesque eu. Morbi tristique senectus et netus. Elementum facilisis leo vel fringilla est ullamcorper eget. Pellentesque elit eget gravida cum sociis. Ultricies tristique nulla aliquet enim tortor at. Risus viverra adipiscing at in."
}
