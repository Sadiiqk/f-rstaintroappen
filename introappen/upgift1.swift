//
//  upgift1.swift
//  introappen
//
//  Created by don falcone on 2023-11-06.
//

import SwiftUI

struct Upgift1: View {
    var body: some View {
        VStack {
            // Grön ruta med vit text
            Text("Sadiiq")
                .font(.largeTitle) // Storlek på texten
                .foregroundColor(.white) // Textfärg
                .frame(maxWidth: .infinity, maxHeight: 100) // Storlek på den gröna rutan
                .background(Color.green) // Bakgrundsfärg
                .padding(.top, 20) // Placera lite avstånd från toppen av skärmen

            // Text under den gröna rutan
            Text("Uppgift 1")
                .font(.title) // Storlek på texten
                .padding(.top, 10) // Placera lite avstånd från den gröna rutan

            Spacer() // Använder Spacer för att skjuta resten av innehållet till botten

            // Blå text i botten
            Text("Botten")
                .font(.headline) // Storlek på texten
                .foregroundColor(.blue) // Textfärg
                .padding(.bottom, 40) // Placera lite avstånd från botten av skärmen
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity) // Låter VStack fylla tillgängligt utrymme
    }
}

struct Uppgift1_Previews: PreviewProvider {
    static var previews: some View {
        Upgift1()
    }
}
