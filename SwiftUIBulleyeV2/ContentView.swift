//
//  ContentView.swift
//  swiftUIBulleyeV2
//
//  Created by Release on 2021/05/16.
//

import SwiftUI

struct ContentView: View {
    @State var alertIsVisible: Bool = false
    var body: some View {
        VStack{
            Text("Welcome to my first App")
                .fontWeight(.semibold)
                .foregroundColor(Color.green)
                .padding()
            
            Button(action: {
                print("Button pressed")
                self.alertIsVisible = true
            }) {
                    Text("Hit me!")
                }
            .alert(isPresented: self.$alertIsVisible){
                Alert(title: Text("Hello there!"),
                      message: Text("This is my first pop-up."),
                      dismissButton: .default(Text("Awesome!")))
            }
        }//End of VStack
    }//End of Body
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
