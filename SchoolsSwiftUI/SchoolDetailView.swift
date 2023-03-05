//
//  SchoolDetailView.swift
//  SchoolsSwiftUI
//
//  Created by manish yadav on 3/4/23.
//

import SwiftUI

struct SchoolDetailView: View {
    var testObj1: TestObj?//(fName: "M", lName: "U")
    var body: some View {
        if let testObj1 = testObj1 {
            Text("Name:\(testObj1.fName)")
        }
    }
}

struct SchoolDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SchoolDetailView()
    }
}
