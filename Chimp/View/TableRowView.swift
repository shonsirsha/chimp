import SwiftUI


struct TableRowView: View {
    let contact: ContactDetail
    
    var body: some View {
        VStack(spacing: 0) {
            
         
           
            HStack(spacing: 0){
                Text("\(contact.firstName) \(contact.lastName)")
                            .truncationMode(.tail)
                               .font(.system(size: 12, weight: .regular))
                    .foregroundColor(.black)
                               .padding(.bottom,8)
                           .padding(.top,8)

                Spacer()
            }
           
            Divider()
        }.listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
    }
}
