import SwiftUI


struct TableRowView: View {
    let contact: ContactDetail
    
    var body: some View {
        HStack(spacing: 20) {
            Text("\(contact.firstName) \(contact.lastName)")
             .truncationMode(.tail)
                .font(.body)
                .foregroundColor(.secondary)                   
            Spacer()
        }
    }
}
