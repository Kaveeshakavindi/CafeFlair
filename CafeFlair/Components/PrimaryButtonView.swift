import SwiftUI

struct PrimaryButtonView: View {
    var title: String
    var width : CGFloat
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        })  {
            Text(title)
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(.white)
                .padding(.vertical, 22)
                .opacity(0.6)
        }
        .frame(maxWidth: width)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color(red: 255/255.0, green: 108/255.0, blue: 17/255.0), .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .opacity(0.1)
        )
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.white.opacity(0.6), lineWidth: 0.3)
        )
        .shadow(color: .black, radius: 5, x: 3, y: 3)
        .buttonStyle(PlainButtonStyle())  
    }
}
