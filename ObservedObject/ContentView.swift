//
//  ContentView.swift
//  ObservedObject
//
//  Created by Saif on 31/10/19.
//  Copyright © 2019 LeftRightMind. All rights reserved.
//

import SwiftUI

class User: ObservableObject {
    @Published var firstName: String = ""
    @Published var lastName: String = ""
}

struct ContentView: View {
    
    @ObservedObject private var user = User()
    
    var body: some View {
        VStack {
            Text("Username is \(user.firstName) \(user.lastName)")
                .padding()
            TextField("FirstName: ", text: $user.firstName)
            TextField("LastName: ", text: $user.lastName)
        }
    .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
