//
//  NavStackView.swift
//  SchoolsSwiftUI
//
//  Created by manish yadav on 3/4/23.
//

import SwiftUI

struct NavStackView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Text("Hello, World!")
                
                NavigationLink(destination: SchoolDetailView()) {
                    Text("School Detail1")
                }
                NavigationLink(destination: SchoolDetailView()) {
                    Text("School Detail2")
                }
            }
        }
    }
}

struct NavStackView_Previews: PreviewProvider {
    static var previews: some View {
        NavStackView()
    }
}
