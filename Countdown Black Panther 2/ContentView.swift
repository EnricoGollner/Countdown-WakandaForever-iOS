//
//  ContentView.swift
//  Countdown Black Panther 2
//
//  Created by Enrico Sousa Gollner on 01/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            Image("wakanda")
            
            VStack{
                Text("\(getNumberOfDaysUntil())")
                Text("Days until")
                Text("Wakanda Forever")
            }
            .minimumScaleFactor(0.5)  // In case of small screens, it'll be changing it's size to fit in the screen
                .font(.custom("Wolf's Bane II", size: 50))
                .foregroundColor(.white)
                .lineLimit(1)  // Forces to be 1 line phrase
        }
    }
    
    func getNumberOfDaysUntil() -> Int{
        let dateComponents = DateComponents(year: 2022, month: 11, day: 9)  // Dia que queremos pegar
        let currentDate = Date.now  // Dia de hoje
        
        if let theDay = Calendar.current.nextDate(after: currentDate, matching: dateComponents, matchingPolicy: .strict), let daysUntilTheDay = Calendar.current.dateComponents([.day,], from: currentDate, to: theDay).day{
            return daysUntilTheDay
        }
        
        return 0
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
