
import SwiftUI


struct DetailView: View {
    @State private var selectedTab = 0

    @ObservedObject private var indexManager = IndexManager()
    //      @State private var contactNameSection: [ContactSection] = []
    var contactMethod = ["Calls","E-Mails", "Notes"]
    
    let contact: ContactDetail
    @State private var favoriteColor = 0
    var body: some View {
        VStack(alignment: .leading, spacing:0){
           
             HStack{
                            VStack(alignment: .leading){
                                Image("frut")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 56.0, height: 56.0)
                                    .clipShape(Circle())
                                                                
                                }.padding(EdgeInsets(top: -48, leading: 12, bottom: 0, trailing: -8)).frame(alignment: Alignment.topLeading)
                            VStack(alignment: .leading){
                                HStack{
                                    Text("Name: ").font(.system(size: 14)).fontWeight(.light)
                            
                                    Text("\(contact.firstName) \(contact.lastName)").font(.system(size: 14)).padding(.leading,-8)


                                }.padding(EdgeInsets(top: 0, leading: 16, bottom: 8, trailing: 0))

                                HStack{
                                    Text("Category: ").font(.system(size: 14)).fontWeight(.light)
                                    Text("Client").font(.system(size: 13)).fontWeight(.regular).padding(EdgeInsets(top: 3, leading: 12, bottom: 3, trailing: 12)).background(Color.orange).cornerRadius(4)

                                }.padding(EdgeInsets(top: 0, leading: 16, bottom: 8, trailing: 0))

                                HStack{
                                    Text("loremipsum@icloud.com").font(.system(size: 14))
                                    Text("+49-157-338-291").font(.system(size: 14)).padding(.leading,8)

                                }.padding(EdgeInsets(top: 0, leading: 16, bottom: 16, trailing: 0))

                                HStack{
                                    Text("LoremTag").font(.system(size: 13)).fontWeight(.regular).padding(EdgeInsets(top: 3, leading: 12, bottom: 4, trailing: 12)).background(Color.red).cornerRadius(4)

                                    Text("LoremTag").font(.system(size: 13)).fontWeight(.regular).padding(EdgeInsets(top: 3, leading: 12, bottom: 4, trailing: 12)).background(Color.purple).cornerRadius(4)
                                }.padding(EdgeInsets(top: 0, leading: 16, bottom: 8, trailing: 0))
                                
       
                                
                            }
                            .frame(alignment: Alignment.topLeading)
                            .onAppear {
                                //
                            }
                            
                            
                        }.padding(.top,32)
            
            VStack(spacing: 0){
         
                                    TabView(selection: $selectedTab) {
                                           CallsView().tabItem { Text("Calls") }.tag(0)
                                        
                                        CallsView().tabItem { Text("Emails") }.tag(1)
                                        
                                        CallsView().tabItem { Text("Notes") }.tag(2)
                                         
                                       }
                                       .frame(maxWidth: .infinity, maxHeight: .infinity)


                                }.padding(EdgeInsets(top: 24, leading: 8, bottom: 8, trailing: 8))
            
            

            
        }.frame(alignment: Alignment.topLeading)
        
        
    }
    
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(contact: ContactDetail(firstName: "Sean", lastName: "Saoirse"))
    }
}
