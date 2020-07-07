//
//  ContentView.swift
//  Prototypes WatchKit Extension
//
//  Created by Harshit Trehan on 7/3/20.
//  Copyright © 2020 Harshit Trehan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geo in
            VStack(alignment: .leading){
                Spacer()
                HStack (){
                    Circle()
                        .foregroundColor(Color.yellow.opacity(0.9))
                        .frame(width: 40, height: 40)
                        .overlay(Image("treadmill")
                                    .resizable()
                                    .frame(width:35, height:35)
                                    .clipShape(Circle())
                                    .padding(0))
                        .overlay(Circle().stroke(Color.red, lineWidth: 1))
                        .shadow(color: .yellow , radius: 4)
                        .padding(EdgeInsets(top: 8, leading: 2, bottom: 0, trailing: 2))

                    Text("Plant a garden long text really really long text")
                        .font(.system(size: 20, design: .rounded))
                        .lineLimit(2)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(EdgeInsets(top: 8, leading: 2, bottom: 0, trailing: 2))
                }.padding(.bottom, 0)
                //Spacer()
                HStack {
                    Text("Start:").font(.system(size: 15.0, design: .rounded)).foregroundColor(.green)

                    Text("01:00 PM").font(.system(size: 18.0, design: .rounded))
                }
                HStack {
                    Text("End:  ").font(.system(size: 15.0, design: .rounded)).foregroundColor(.red)

                    Text("01:30 PM").font(.system(size: 18.0, design: .rounded))
                }
                Text("Takes 20 minutes").font(.system(size: 16.0, design: .rounded)).frame(maxWidth: geo.size.width, alignment: .center).padding(.top, 5)
                
                HStack {
                    Button(action: {buttonAction()}){
                        Text("Start").foregroundColor(.green)
                    }
                    Button(action: {buttonAction()}){
                        Text("Details").foregroundColor(.green)
                    }.padding(.top, 5)
                }
            }.frame(height: geo.size.height)
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

func buttonAction() -> Void{
       print("Starting")
       return
   }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
