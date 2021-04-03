import SwiftUI

struct MeetingInfoSectionView: View {
    @Binding var scrum: DailyScrum
    
    var body: some View {
        Section(header: Text("Meeting Info")) {
            NavigationLink(destination: MeetingView(scrum: $scrum)) {
                Label("Start Meeting", systemImage: "timer")
                    .font(.headline)
                    .foregroundColor(.accentColor)
                    .accessibilityLabel(Text("Start meeting"))
            }
            HStack {
                Label("Length", systemImage: "clock")
                    .accessibilityLabel(Text("Meeting length"))
                Spacer()
                Text("\(scrum.lengthInMinutes) minutes")
            }
            HStack {
                Label("Color", systemImage: "paintpalette")
                Spacer()
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(scrum.color)
            }
            .accessibilityElement(children: .ignore)
        }
    }
}

struct MeetingInfoSectionView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingInfoSectionView(scrum: .constant(DailyScrum.data[0]))
            .previewLayout(.sizeThatFits)
    }
}
