//
//  ContentView.swift
//  swiftUIBulleyeV2
//
//  Created by Release on 2021/05/16.
//

import SwiftUI

struct ContentView: View {
    //Properties
    //===================
    
    //state for User Interface views
    @State var alertIsVisible: Bool = false
    @State var sliderValue: Double = 50.0
    var body: some View {
        VStack{
            Spacer()
            HStack {
                Text("Put the bull eye as close as you can do: 100")
                    
            }
            Spacer()
            //Slider row
            
            HStack {
                Text("1")
                Slider(value: self.$sliderValue, in: 1...100)
                Text("100")
            }
            
            Spacer()
            //Button row
            
            Button(action: {
                print("Button pressed")
                self.alertIsVisible = true
            }) {
                    Text("Hit me!")
                }
            //State for alert
            
            .alert(isPresented: self.$alertIsVisible){
                Alert(title: Text("Hello there!"),
                      message: Text("The slider's value is \(Int(self.sliderValue.rounded()))."),
                      dismissButton: .default(Text("Awesome!")))
            }//End of .alert()
            Spacer()
            //Score row
            //TODO: Add view for the score, rounds, and start over and info button
            HStack {
                Button(action:{}){
                    Text("Start over")
                    
                }
                Spacer()
                Text("Score:")
                Text("999999")
                Spacer()
                Text("Round:")
                Text("999")
                Spacer()
                Button(action:{}){
                    Text("Inform")
                    
                }
            }.padding(.bottom,20)
            
        }//End of VStack
    }//End of Body
    
    //Methods
    
}//End of struct

//Preview
//======================
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
