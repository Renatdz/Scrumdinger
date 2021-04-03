import SwiftUI

struct AttendeesSectionView: View {
    @Binding var scrum: DailyScrum
    
    var body: some View {
        Section(header: Text("Attendees")) {
            ForEach(scrum.attendees, id: \.self) { attendee in
                Label(attendee, systemImage: "person")
                    .accessibilityLabel(Text("Person"))
                    .accessibilityValue(Text(attendee))
            }
        }
    }
}

struct AttendeesSectionView_Previews: PreviewProvider {
    static var previews: some View {
        AttendeesSectionView(scrum: .constant(DailyScrum.data[0]))
            .previewLayout(.sizeThatFits)
    }
}
