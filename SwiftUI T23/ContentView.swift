//
//  ContentView.swift
//  SwiftUI T23
//
//  Created by M Fadli Zein on 19/03/22.
//

import SwiftUI

struct ContentView: View {
    @State var viewState = CGSize.zero
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(.blue)
            .frame(width: 300, height: 400)
            .offset(x: viewState.width, y: viewState.height)
            .animation(.spring(response: 0.4, dampingFraction: 0.6))
            .gesture(
                DragGesture()
                    .onChanged{ value in
                        viewState = value.translation
                    }
                    .onEnded { value in
                        viewState = .zero
                    }
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
