//
//  ViewController.swift
//  CAEmitterLayer
//
//  Created by 林佩柔 on 2021/5/19.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        view.backgroundColor = UIColor(red: 239/255, green: 232/255, blue: 215/255, alpha: 1)
        // https://www.schemecolor.com/giant-sea.php
        // 黃(239, 232, 215)
        // 綠(179, 220, 203)
        
        
    }
    
    struct ViewControllerView: UIViewControllerRepresentable {
        func makeUIViewController(context: Context) -> ViewController {
            ViewController()
        }
        
        func updateUIViewController(_ uiViewController: ViewController, context: Context) {
        }
        
        typealias UIViewControllerType = ViewController
        
        
    }
    struct ViewController_Previews: PreviewProvider {
        static var previews: some View {
            ViewControllerView()
                .previewDevice("iPhone 12 mini")
        }
    }
}




