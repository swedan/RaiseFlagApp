//
//  ContentView.swift
//  RaiseFlagApp
//
//  Created by msweidan on 24/06/2023.
//

import SwiftUI

struct ContentView: View {
    @State var raise = 0.0
    @State var anthom = "Ishy Bilady"

    var body: some View {
   
        VStack{
            Text("\(Int(raise))")
            HStack{
                Rectangle()
                    .frame(width:30, height: 600)
                Text("🇦🇪")
                    .font(.system(size: 110))
                    .padding(-22)
                    .offset(y: raise * -10)
            } // hstack end
            
            HStack{
                Button {
                    // action
                    withAnimation {
                        if raise <= 24 {
                            raise += 1
                        }
                        
                        if raise == 10 {
                            anthom = "Long live my country, the unity of our Emirates lives.You've lived for the nation's faith of Islam and guide of the Quran."
                        } else if raise == 13 {
                            anthom = "I've made you stronger in God's name, O homeland."
                        }
                    }

                    
                } label: {
                    Text("Raise Flag")
                        .padding()
                        .background(.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                }
                
                Button {
                    withAnimation (.easeOut) {
                        raise = 0
                        anthom = "Ishy Bilady"
                    }
                    
                } label: {
                    Text("Reset")
                        .padding()
                        .background(.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                }

            }
            
            Spacer()
            
            Text(anthom)
            
            /*
             
             Long live my country, the unity of our Emirates lives.
             You've lived for the nation's faith of Islam and guide of the Quran.
             I've made you stronger in God's name, O homeland.

             My country, my country, my country, my country.
             God protected you from the evils of time.
             We have sworn to build and work –
             work earnestly, work earnestly.
             As long as we live, we will be sincere.

             The safety has lasted, the flag has lived, O our Emirates!
             The symbol of Arabism: we all sacrifice for you and give you our blood;
             For you we sacrifice with our souls, O homeland!
             
             
             */

            
        } // vstack end
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
