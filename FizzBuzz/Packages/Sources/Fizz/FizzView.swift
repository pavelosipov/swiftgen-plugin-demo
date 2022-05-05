//
//  FizzView.swift
//  Packages
//
//  Created by Pavel Osipov on 05.05.2022.
//

import SharedResources
import SwiftUI

public struct FizzView: View {
  public init() {}

  public var body: some View {
    ZStack {
      Text(Fizz.L10n.Page.title)
        .padding()
      Text(SharedResources.L10n.Shared.footer)
        .padding()
        .frame(maxHeight: .infinity, alignment: .bottom)
    }
  }
}

struct FizzView_Previews: PreviewProvider {
  static var previews: some View {
    FizzView()
  }
}
