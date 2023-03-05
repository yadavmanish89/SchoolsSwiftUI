//
//  SchoolTabView.swift
//  SchoolsSwiftUI
//
//  Created by manish yadav on 3/4/23.
//

import SwiftUI

struct SchoolTabView: View {
    let testObj: TestObj?
    var body: some View {
        SampleTabView()
    }
}
enum TabViewTag: Int {
    case SchoolList = 0, Setting = 1
}
struct SampleTabView: View {
    @State private var activeTab: Int = 0
    var body: some View {
        TabView(selection: $activeTab) {
            SchoolListView() // Content of Tab
                .tabItem { // create Tab
                    Label("First T", systemImage: "graduationcap.fill") // Add text and image to Tab
                }
                .tag(TabViewTag.SchoolList)
            
            Label("Second", systemImage: "checkmark.circle") // Content of Tab
                .tabItem { // create Tab
                    Text("First") // set Tab UI with text
                    Image(systemName: "gear") // Add Image to Tab
                   // Label("Second T", systemImage: "checkmark.circle")
                }
                .tag(TabViewTag.Setting)
        }
        .onChange(of: activeTab, perform: { newValue in
            print("Tab selected:\(newValue)")
        })
    }
}

struct SchoolTabView_Previews: PreviewProvider {
    static var previews: some View {
        SchoolTabView(testObj: TestObj(fName: "Manish", lName: "Yadav"))
    }
}
