import SwiftUI

struct BackgroundView: View {
    var body: some View {
        // Dégradé de bleu clair en haut à bleu foncé en bas
        let blueGradientScheme = [
            Color(red: 109/255, green: 212/255, blue: 250/255), // bleu clair
            Color(red: 41/255, green: 128/255, blue: 184/255),  // bleu moyen
            Color(red: 0/255, green: 51/255, blue: 102/255)      // bleu foncé
        ]

        let gradient = Gradient(colors: blueGradientScheme)
        let linearGradient = LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom)

        let background = Rectangle()
            .fill(linearGradient)
            .edgesIgnoringSafeArea(.all)
        
        return background;
    }
}
