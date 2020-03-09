
import SwiftUI

struct DetailView: View {
    let contact: ContactDetail
    

    var body: some View {
         VStack {
            Text("\(contact.firstName) \(contact.lastName)")
                .font(.headline)
                .padding()
         
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .onAppear {
            //
        }
    }
    
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(contact: ContactDetail(firstName: "Sean", lastName: "Saoirse"))
    }
}
