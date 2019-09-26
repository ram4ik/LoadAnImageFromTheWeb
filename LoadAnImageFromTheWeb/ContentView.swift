//
//  ContentView.swift
//  LoadAnImageFromTheWeb
//
//  Created by ramil on 26/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

let imageUrl = "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d2/Manhattan_at_Dusk_by_slonecker.jpg/440px-Manhattan_at_Dusk_by_slonecker.jpg"

struct ContentView: View {
    var body: some View {
        RemoteImage(url: imageUrl)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
