//
//  ContentView.swift
//  hw1
//
//  Created by Maximilian Turza on 14.09.23.
//

import SwiftUI

struct ContentView: View {
    
    
    @State private var input1: String = "0"
    @State private var input2: String = "0"
    @State private var result: String = "0"
    @State private var sliderValue = 0.0
    @State private var isChanging = false
    
    private func calculate(){
        let a = (input1 as NSString).integerValue
        let b = (input2 as NSString).integerValue
        let z = a + b
        result = String(z)
    }

    
    var body: some View {
        NavigationView{
            ZStack {
                Color(.white)
                    .edgesIgnoringSafeArea(.all) // makes the view fit the whole screen + safe area.
                VStack {
                    HStack{
                        Text("Maximilian Turza")
                        Spacer()
                    }
                    
                    TextField("input1", text: $input1).keyboardType(.numberPad)                .textFieldStyle(.roundedBorder)
                    TextField("input2", text: $input2).keyboardType(.numberPad)                .textFieldStyle(.roundedBorder)
                    
                    HStack{
                        Button(action: calculate){
                            Text("Calculate")
                        }
                    }
                    .padding(.vertical)
                    HStack{
                        Text(result)
                            .accessibilityIdentifier("Identifier")
                        Spacer()
                    }
                    NavigationLink(destination: View2(defaultString: self.result)){
                        Text("Navigate")
                    }
                    Slider(value: $sliderValue, in: 0...1, onEditingChanged: { slideVal in
                        isChanging = slideVal
                    })
                    HStack{
                        Text("\(sliderValue)")
                        Spacer()
                    }
                    
                    Color(.white)
                    
                }
                .padding(.horizontal)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
