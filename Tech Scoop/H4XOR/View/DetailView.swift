//
//  DetailView.swift
//  H4XOR
//
//  Created by Casey on 27/06/22.
//

import SwiftUI


struct DetailView: View {
    let url: String?
    var body: some View {
        WebView(urls: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}



