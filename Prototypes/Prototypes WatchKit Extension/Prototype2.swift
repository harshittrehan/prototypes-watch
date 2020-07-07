//
//  Prototype2.swift
//  Prototypes WatchKit Extension
//
//  Created by Harshit Trehan on 7/3/20.
//  Copyright © 2020 Harshit Trehan. All rights reserved.
//

import SwiftUI

struct Prototype2: View {
    var test = ["Task 1 fffffffffffffff", "Task 2", "Task 3", "Task 4", "Task 5", "Task 6"]
    var num = [1,2,3]
    var body: some View {
        GeometryReader { geo in
            VStack {
                Text("Tasks")
                List{
                    ForEach(self.test, id: \.self){ item in
                        HStack{
                            //Image(systemName: "play.fill")
                              //  .buttonStyle(PlainButtonStyle())
                                Text("Start")
                                    .foregroundColor(.green)
                                    .onTapGesture {
                                    print("Starting...")
                                }
                            Divider()
                            NavigationLink(destination: ContentView()){
                                Text(item)
                            }
                        }//.listRowPlatterColor(.black)

                            .frame(maxWidth: geo.size.width, alignment: .leading)
                            //.border(Color.yellow)
                    }
                }
            }
        }.navigationBarTitle("Plant a garden long text")
        /*
        List{
            ForEach(test, id: \.self){ item in
                Text(item)
            }
        }*/
    }
}

struct Prototype2_Previews: PreviewProvider {
    static var previews: some View {
        Prototype2()
    }
}
