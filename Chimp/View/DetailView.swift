
import SwiftUI


struct DetailView: View {
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
                    
                    
                    
                    
                    
                }
                .frame(minWidth: 50, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: Alignment.topLeading)
                .onAppear {
                    //
                }
                
                
            }.padding(.top,32).padding(.leading,32)
            
            VStack(alignment: .center) {
                Picker(selection: $favoriteColor, label: Text("")) {
                    Text("Red").tag(0)
                    Text("Green").tag(1)
                    Text("Blue").tag(2)
                }.pickerStyle(SegmentedPickerStyle())
                
//                Text("Value: \(favoriteColor)")
            }.padding(.leading,128).padding(.trailing,128)
        }
        
        
    }
    
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(contact: ContactDetail(firstName: "Sean", lastName: "Saoirse"))
    }
}
