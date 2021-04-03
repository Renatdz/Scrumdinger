import SwiftUI

struct HistorySectionView: View {
    @Binding var scrum: DailyScrum
    
    var body: some View {
        Section(header: Text("History")) {
            if scrum.history.isEmpty {
                Label("No meetings yet", systemImage: "calendar.badge.exclamationmark")
            }
            ForEach(scrum.history) { history in
                HStack {
                    Image(systemName: "calendar")
                    Text(history.date, style: .date)
                }
            }
        }
    }
}

struct HistorySectionView_Previews: PreviewProvider {
    static var previews: some View {
        HistorySectionView(scrum: .constant(DailyScrum.data[0]))
            .previewLayout(.sizeThatFits)
    }
}
