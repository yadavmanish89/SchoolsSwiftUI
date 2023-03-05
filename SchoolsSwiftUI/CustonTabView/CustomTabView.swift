//
//  CustomTabView.swift
//  SchoolsSwiftUI
//
//  Created by manish yadav on 3/4/23.
//

import SwiftUI

struct CustomTabView: View {
    @State var selectedIndex = 0
    @State var shouldShowModal = false
    init() {
        UINavigationBar.appearance().barTintColor = .blue
        UINavigationBar.appearance().backgroundColor = .red
    }
    let tabBarImageNames = ["person",
                            "gear",
                            "plus.app.fill",
                            "pencil",
                            "lasso"
                            ]
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                
                Spacer()
                    .fullScreenCover(isPresented: $shouldShowModal) {
                        Button {
                            shouldShowModal.toggle()
                        } label: {
                            Text("Full Screen Cover")                        }
                    }
                switch selectedIndex {
                case 0 :
                    NavigationView {
                        ScrollView{
                            ForEach(0..<100) { num in
                                Text("\(num)")
                            }
                        }
                            .navigationTitle("First Tab")
                    }
                case 1:
                    ScrollView{
                        ForEach(0..<100) { num in
                            Text("\(num)")
                        }
                    }
                default:
                    Text("Remaining Tabs")
                }
            }
//            Spacer()
            Divider()
                .padding(.bottom, 8)
            HStack {
                ForEach(0..<5) { num in
                  let _ =  print("num:--\(num)")
                    Button(action: {
                        print("But action")
                        if num == 2 {
                            shouldShowModal.toggle()
                            return
                        }
                        selectedIndex =  num

                    }) {
                        Spacer()
                        if num == 2 {
                            Image(systemName: tabBarImageNames[num])
                                .font(.system(size: 44.0, weight: .bold))
                            .foregroundColor(.red)                        } else {
                            Image(systemName: tabBarImageNames[num])
                                .font(.system(size: 24.0, weight: .bold))
                                .foregroundColor(selectedIndex == num ? Color(.black) : .init(white: 0.8))
                        }
                        Spacer()
                    }
                }
            }
            
        }
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabView()
    }
}
