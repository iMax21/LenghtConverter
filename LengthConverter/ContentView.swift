//
//  ContentView.swift
//  LengthConverter
//
//  Created by Massimo Polimeni on 12/05/2020.
//  Copyright © 2020 Massimo Polimeni. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var input = "0"
    @State private var inputUnitSelected = 0
    @State private var output = "0"
    @State private var outputUnitSelected = 0
    
    var units = ["meters", "kilometers", "feet", "yard", "miles"]
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("What do you want to convert?")) {
                    TextField("Input", text: $input)
                    Picker("Unit", selection: $inputUnitSelected) {
                        ForEach(0..<units.count ) {
                            Text("\(self.units[$0])")
                        }
                    }
                }
                
                Section(header: Text("In which unit?")) {
                    Picker("Unit", selection: $outputUnitSelected) {
                        ForEach(0..<units.count ) {
                            Text("\(self.units[$0])")
                        }
                    }
                }
                
                Section(header: Text("Result")) {
                    Text("\(output) \(units[outputUnitSelected])")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
