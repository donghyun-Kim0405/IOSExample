import SwiftUI

struct ContentView: View {
    
    @State private var nameComponents = PersonNameComponents()
    @State private var username: String = ""


    var body: some View {
        
        HStack{
            TextField(
                          "Username",
                          text: $username,
                          onEditingChanged: { (isBegin) in
                              if isBegin {
                                  print("Begins editing")
                                  print(username)
                              } else {
                                  print("Finishes editing")
                                  print(username)
                              }
                          },
                          onCommit: {
                              print("commit")
                          }
            )
        }.padding(EdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8))
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
