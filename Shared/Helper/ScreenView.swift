//
//  Screen.swift
//  starducks
//
//  Created by MAC on 2020/7/26.
//

import SwiftUI

let screen = UIScreen.main.bounds

struct Blur: UIViewRepresentable {
    var style: UIBlurEffect.Style = .systemMaterial

    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: style))
    }

    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}


extension View {
    // 1 Create a ViewBuilder function that can be applied to any type of content conforming to view
  @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
    if condition {
        // 2 If condition matches, apply the transform
      transform(self)
    } else {
      // 3 If not, just return the original view
      self
    }
  }
}

extension View {
  func fillParent(alignment: Alignment = .center) -> some View {
    self
      .frame(
        minWidth: 0,
        maxWidth: .infinity,
        minHeight: 0,
        maxHeight: .infinity,
        alignment: alignment
    )
  }
}
