//
//  Prototype3.swift
//  Prototypes WatchKit Extension
//
//  Created by Harshit Trehan on 7/5/20.
//  Copyright © 2020 Harshit Trehan. All rights reserved.
//

import SwiftUI

struct Prototype3: View {
    var test = ["Step 1", "Step 2", "Step 3"]
    var num = [1,2,3]
    
    var body: some View {
        GeometryReader { geo in
            VStack(alignment: .leading){
                Text("Instructions")
                    .frame(maxWidth: geo.size.width, alignment: .center)
                    .padding(0)
                //Spacer()
                HStack{
                    Circle()
                        .foregroundColor(Color.yellow.opacity(0.9))
                        .frame(width: 40, height: 40)
                        .overlay(Image("task3")
                                    .resizable()
                                    .frame(width:35, height:35)
                                    .clipShape(Circle())
                                    .padding(0))
                                    .overlay(Circle().stroke(Color.red, lineWidth: 1))
                                    .shadow(color: .yellow , radius: 4)
                        .padding(EdgeInsets(top: 8, leading: 2, bottom: 0, trailing: 2))

                    Text("Task 1")
                        .font(.system(size: 20, design: .rounded))
                        .lineLimit(2)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(EdgeInsets(top: 8, leading: 2, bottom: 0, trailing: 2))
                }.padding(0)
                //Spacer()
                List{
                    ForEach(self.test, id: \.self){ item in
                        HStack{
                            //Image(systemName: "play.fill")
                            //    .buttonStyle(PlainButtonStyle())
                            Text("Done?")
                                .foregroundColor(.green)
                                .onTapGesture {
                                    print("Starting...")
                                }
                            Divider()
                            VStack {
                                Circle()
                                    .foregroundColor(Color.yellow.opacity(0.9))
                                    .frame(width: 30, height: 30)
                                    .overlay(Image("step")
                                        .resizable()
                                        .frame(width:20, height:20)
                                        .clipShape(Circle())
                                        .padding(0))
                                    .overlay(Circle().stroke(Color.red, lineWidth: 1))
                                    .shadow(color: .yellow , radius: 4)
                                    .padding(0)
                                Text(item)
                            }
                        }.frame(maxWidth: geo.size.width, alignment: .leading)
                    }
                }
            }.frame(height: geo.size.height)
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct Prototype3_Previews: PreviewProvider {
    static var previews: some View {
        Prototype3()
    }
}
