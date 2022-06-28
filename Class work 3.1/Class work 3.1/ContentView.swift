//
//  ContentView.swift
//  Class work 3.1
//
//  Created by MAC on 28/06/2022.
//

import SwiftUI

struct ContentView: View {
        @State var Counter1 = 0
        @State var Counter2 = 0
        @State var Counter3 = 0
    var body: some View {
        VStack{
            Spacer()
            Extractedviwe1(Counter1: $Counter1)
            Spacer()
            Extractedviwe2(Counter2: $Counter2)
            Spacer()
            Extractedviwe3(Counter3: $Counter3)
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct Extractedviwe1: View {
    @Binding var Counter1 : Int
    var body: some View {
        HStack{
            Text("استغفر الله العظيم")
                .font(.system(size: 25))
            Text("\(Counter1)")
                .font(.system(size: 60))
                .clipShape(Circle())
                .foregroundColor(.white)
                .background(Color.green)
                .frame(width: 90, height: 90)
                .onTapGesture {
                    Counter1 = Counter1 + 1
                    
                }
        }
    }
}
struct Extractedviwe2: View {
    @Binding var Counter2 : Int
    var body: some View {
        HStack{
            Text(" سبحان الله وبحمده")
                .font(.system(size: 25))
            Text("\(Counter2)")
                .font(.system(size: 60))
                .clipShape(Circle())
                .foregroundColor(.white)
                .background(Color.green)
                .frame(width: 90, height: 90)
                .onTapGesture {
                    Counter2 = Counter2 + 1
                }
        }
    }
}
struct Extractedviwe3: View {
    @Binding var Counter3 : Int
    var body: some View {
        HStack{
            Text(" سبحان الله العظيم")
                .font(.system(size: 25))
            Text("\(Counter3)")
                .font(.system(size: 60))
                .clipShape(Circle())
                .foregroundColor(.white)
                .background(Color.green)
                .frame(width: 90, height: 90)
                .onTapGesture {
                    Counter3 = Counter3 + 1
                }
        }
    }
}

