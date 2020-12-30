import SwiftUI

class Eyedropper: ObservableObject {
  
  var title: String
  @Published public var color: NSColor
  
  init(title: String, color: Color) {
    self.title = title
    self.color = NSColor(color)
  }
  
  func start() {
    let sampler = NSColorSampler()
    sampler.show { (selectedColor) in
      if let selectedColor = selectedColor {
        self.color = selectedColor
      }
      else {
        print("Nope. They cancelled.")
      }
    }
  }
}
