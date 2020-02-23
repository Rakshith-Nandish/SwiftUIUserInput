
import SwiftUI

struct ContentView: View {
    
    @State private var userName: String = ""
    @State private var userPassword: String = ""
    
    var body: some View {
        
        ZStack {
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            
            VStack(alignment: .center, spacing: 180.0) {
                Text("SwiftUI")
                .font(.largeTitle)
                .bold()
                .padding()
                
                VStack(alignment: .center, spacing: 25) {
                    TextField("Username", text: $userName)
                        .padding(.all)
                        .background(Color.white)
                        .cornerRadius(10)
                    
                    TextField("Password", text: $userPassword)
                        .padding(.all)
                        .background(Color.white)
                    .cornerRadius(10)
                    
                    Button(action: {})
                        {
                            Text("Login")
                                .fontWeight(.medium)
                                .font(.title)
                                .foregroundColor(Color.red)
                                .padding(.horizontal, 10)
                        }.padding()
                    .background(Color.white)
                    .cornerRadius(10)
                }.padding(.horizontal, 17)
            
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
