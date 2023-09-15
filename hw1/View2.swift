//
//  View2.swift
//  hw1
//
//  Created by Maximilian Turza on 14.09.23.
//

import SwiftUI

struct View2: View {
    
    @State var defaultString = "0"
    
    
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Text(defaultString)
                    Spacer()
                }
                .padding(.horizontal)
                Color(.white)
            }
        }
    }
}

struct View2_Previews: PreviewProvider {

    static var previews: some View {
        View2()
    }
}
