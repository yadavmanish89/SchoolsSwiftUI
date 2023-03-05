//
//  SchoolListView.swift
//  SchoolsSwiftUI
//
//  Created by manish yadav on 3/4/23.
//

import SwiftUI

struct SchoolListView: View {
    let testObj = TestObj(fName: "Manish", lName: "Yadav")
    var body: some View {
        NavigationStack {
            List(0..<5) { item in
                NavigationLink(destination: SchoolDetailView(testObj1: testObj)) {
                    Text("Roww: \(item)")
                }
            }
            .navigationTitle("School List")
        }
    }
}
struct SchoolListView_Previews: PreviewProvider {
    static var previews: some View {
        SchoolListView()
    }
}
