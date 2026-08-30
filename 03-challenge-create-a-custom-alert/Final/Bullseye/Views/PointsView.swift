import SwiftUI

struct PointsView: View {
  var body: some View {
    VStack(spacing: 10) {
      InstructionText(text: "The slider's value is")
      BigNumberText(text: "89")
      BodyText(text: "You scored 200 Points\n 😻😻😻")
      Button {
        // start new round
      } label: {
        ButtonText(text: "Start New Round")
      }
    }
    .padding()
    .frame(maxWidth: 300)
    .background(Color("BackgroundColor"))
    .cornerRadius(21)
    .shadow(radius: 10, x: 5, y: 5)
  }
}

#Preview {
  @Previewable @State var alertIsVisible = true
  @Previewable @State var game = Game()
  PointsView(alertIsVisible: $alertIsVisible, sliderValue: .constant(50.0), game: $game)
}

#Preview("Dark Mode", traits: .landscapeRight) {
  @Previewable @State var alertIsVisible = true
  @Previewable @State var game = Game()
  PointsView(alertIsVisible: $alertIsVisible, sliderValue: .constant(50.0), game: $game)
    .preferredColorScheme(.dark)
}
