//
//  meteorViewController.swift
//  CAEmitterLayer
//
//  Created by 林佩柔 on 2021/5/19.
//

import UIKit
import SwiftUI

class meteorViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nightImage = UIImage(named: "night")
        let nightImageView = UIImageView(frame: view.bounds)
        nightImageView.image = nightImage
        nightImageView.contentMode = .scaleToFill
        view.addSubview(nightImageView)
    }
    
    
    
    struct ViewControllerView: UIViewControllerRepresentable {
        func makeUIViewController(context: Context) -> meteorViewController {
            meteorViewController()
        }
        
        
        func updateUIViewController(_ uiViewController: meteorViewController, context: Context) {
        }
        
        typealias UIViewControllerType = meteorViewController
        
    }
    struct ViewController_Previews: PreviewProvider {
        static var previews: some View {
            ViewControllerView()
                .previewDevice("iPhone 12 mini")
        }
    }
}

