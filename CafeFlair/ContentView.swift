import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 100) {
                Text("Cafe flair")
                    .foregroundColor(.white)
                    .font(.system(size: 25, weight: .bold, design: .default))
                Image("Cf")
                    .resizable()
                    .frame(width:80, height: 80)
                
                NavigationLink(destination: SigninView()){
                    PrimaryButtonView(
                        title: "Get Started", width: UIScreen.main.bounds.width * 3/4
                    ){}
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.05, green: 0.06, blue: 0.08))
            //.ignoresSafeArea()
        }
    }
}
