//
//  WebView.swift
//  H4XOR
//
//  Created by Casey on 27/06/22.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable
{
    let urls: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let surl = urls
        {
            if let url = URL(string: surl)
            {
                let req = URLRequest(url: url)
                uiView.load(req)
            }
        }
    }
    
}
