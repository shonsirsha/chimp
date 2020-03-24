
import SwiftUI


struct DetailView: View {
    @ObservedObject private var indexManager = IndexManager()
//      @State private var contactNameSection: [ContactSection] = []
       var contactMethod = ["Calls","E-Mails", "Notes"]
    
    let contact: ContactDetail
    @State private var favoriteColor = 0
    var body: some View {
        VStack{
            HStack{
                VStack{
                    Image("frut")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 56.0, height: 56.0)
                        .clipShape(Circle())
                        .padding(.bottom,4)
                    Spacer()
                }
                VStack(alignment: .leading){
                    HStack{
                        Text("Name: ").font(.system(size: 14)).fontWeight(.light)
                        Text("\(contact.firstName) \(contact.lastName)").font(.system(size: 14)).padding(.leading,-8)
                        
                        
                    }.padding(EdgeInsets(top: 0, leading: 16, bottom: 8, trailing: 0))
                    
                    HStack{
                        Text("Category: ").font(.system(size: 14)).fontWeight(.light)
                        Text("Client").font(.system(size: 14)).padding(.leading,-8)
                        
                    }.padding(EdgeInsets(top: 0, leading: 16, bottom: 8, trailing: 0))
                    
                    HStack{
                        Text("loremipsum@icloud.com").font(.system(size: 14))
                        Text("+49-157-338-291").font(.system(size: 14)).padding(.leading,8)
                        
                    }.padding(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 0))
                    
                    HStack{
                        Text("LoremTag").font(.system(size: 11)).fontWeight(.bold).padding(EdgeInsets(top: 3, leading: 12, bottom: 4, trailing: 12)).background(Color.red).cornerRadius(13)
                        
                        Text("LoremTag").font(.system(size: 11)).fontWeight(.bold).padding(EdgeInsets(top: 3, leading: 12, bottom: 4, trailing: 12)).background(Color.purple).cornerRadius(13)
                    }.padding(EdgeInsets(top: 0, leading: 16, bottom: 8, trailing: 0))
                    
                    VStack{
                        Picker("", selection: $indexManager.contactSelectorIndex) {
                                                   ForEach(0 ..< contactMethod.count) { index in
                                                       Text(self.contactMethod[index]).tag(index)
                                                   }
                                               }.pickerStyle(SegmentedPickerStyle())
                     
                    }.padding(EdgeInsets(top: 32, leading: 240, bottom: 8, trailing: 240))
                 
                    
                    
                }
                .frame(minWidth: 50, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: Alignment.topLeading)
                .onAppear {
                    //
                }
                
                
            }.padding(.top,32).padding(.leading,32)
            
          
        }
        
        
    }
    
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(contact: ContactDetail(firstName: "Sean", lastName: "Saoirse"))
    }
}
