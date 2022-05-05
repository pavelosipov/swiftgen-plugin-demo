//
//  ContentView.swift
//  FizzBuzz
//
//  Created by Pavel Osipov on 05.05.2022.
//

import Buzz
import Fizz
import SwiftUI

struct ContentView: View {
  var body: some View {
    TabView {
      FizzView().tabItem { Text("Fizz") }
      BuzzView().tabItem { Text("Buzz") }
    }
    .font(.headline)  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
