//
//  ContentView.swift
//  TimelineViewsInSwiftUI
//
//  Created by Ramill Ibragimov on 23.05.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            TimelineView(.animation) { context in
                let date = context.date
                let seconds = Calendar.current.component(.second, from: date)
                
                Circle()
                    .trim(from: 0, to: Double(seconds) / 60.0)
                    .stroke(Color.red, lineWidth: 16)
            }
            .padding(80)
            
            TimelineView(.periodic(from: .now, by: 3)) { context in
                let date = context.date
                let seconds = Calendar.current.component(.second, from: date)
                
                Circle()
                    .trim(from: 0, to: Double(seconds) / 60.0)
                    .stroke(Color.green, lineWidth: 12)
            }
            .rotationEffect(Angle(degrees: 45.0))
            .padding(60)
            
            TimelineView(.periodic(from: .now, by: 3)) { context in
                let date = context.date
                let seconds = Calendar.current.component(.second, from: date)
                
                Circle()
                    .trim(from: 0, to: Double(seconds) / 60.0)
                    .stroke(Color.orange, lineWidth: 6)
            }
            .rotationEffect(Angle(degrees: 90))
            .padding(30)
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
