//
//  SchoolsSwiftUIApp.swift
//  SchoolsSwiftUI
//
//  Created by manish yadav on 3/4/23.
//

import SwiftUI

@main
struct SchoolsSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            SchoolTabView(testObj: TestObj(fName :"Manish", lName: "Yadav"))
//            CustomTabView()
        }
    }
}
