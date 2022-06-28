//
//  ContentView.swift
//  class work 3
//
//  Created by MAC on 28/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var name = ""
    @State var result = ""
    var body: some View {

        ZStack{
            Image("blue")
                .resizable()
                .ignoresSafeArea()
            VStack{
                
            Text("حاسبة الدرجات")
                    .font(.system(size: 40))
                    Spacer()
                Image("calculator")
                    .resizable()
                    .frame(width: 200, height: 250)
                
                
                TextField("ادخل درجتك", text: $name)
                    .background()
                    .font(.system(size: 35))
                    .multilineTextAlignment(.center)
                    .frame(width: 350, height: 40)
                
                
            Text("احسب درجتي")
                    .frame(width: 250, height: 65)
                    .font(.system(size: 35))
                    .background(.yellow)
                    .clipShape(Capsule())
                    .onTapGesture {
                        if Int(name)! >= 90 && Int(name)! <= 100 {
                            result = "امتياز"
                        }
                        else if Int(name)! >= 80 && Int(name)! <= 89{
                            result = "جيدجداُ"

                        }
                        else if Int(name)! >= 70 && Int(name)! <= 79{
                            result = "جيد"
                        }
                        else if Int(name)! >= 60 && Int(name)! <= 69{
                            result = "مقبول"
                        }
                        else if Int(name)! < 60 && Int(name)! >= 0
                        {
                            result = "راسب"
                        
                        }
                        else{
                            result = "يوجد خطأ"
                        }
                                    
                    }
                Spacer()
                  
                Text("لقد حصلت على درجة")
                    .font(.system(size: 25))
                   Spacer()
                Text(result)
                    .font(.system(size: 70))
                Spacer()
            }
           
           
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
