//
//  fireworkViewController.swift
//  CAEmitterLayer
//
//  Created by 林佩柔 on 2021/5/19.
//
import UIKit
import SwiftUI

class fireworkViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 背景
        let fireworkImage = UIImage(named: "fireworkBackground")
        let fireworkImageView = UIImageView(frame: view.bounds)
        fireworkImageView.image = fireworkImage
        fireworkImageView.contentMode = .scaleAspectFill
        view.addSubview(fireworkImageView)
        
        //""煙火"" 產生CAEmitterLayer()跟CAEmitterCell()的元件
        let fireEmitterLayer = CAEmitterLayer()
        let firstEmitterCell = CAEmitterCell()
        let trailCell = CAEmitterCell()
        let fireworkCell = CAEmitterCell()
        fireEmitterLayer.emitterSize = CGSize(width: view.bounds.width, height: view.bounds.height)
        //發射起點
        fireEmitterLayer.emitterPosition = CGPoint(x: view.bounds.width / 2, y: view.bounds.height / 1.4)

        //加渲染效果
//        fireEmitterLayer.renderMode = .additive
        
        firstEmitterCell.color = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5).cgColor
        firstEmitterCell.redRange = 0.9
        firstEmitterCell.greenRange = 0.9
        firstEmitterCell.blueRange = 0.9
        firstEmitterCell.lifetime = 5
        firstEmitterCell.birthRate = 5
        firstEmitterCell.velocity = 300
        firstEmitterCell.velocityRange = 100
        firstEmitterCell.emissionRange = CGFloat.pi / 180 * 30
        firstEmitterCell.emissionLongitude =  -CGFloat.pi / 2
        firstEmitterCell.yAcceleration = CGFloat.random(in: 100...200)
        
        trailCell.contents = UIImage(named: "particle")?.cgImage
        trailCell.color = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        trailCell.lifetime = 0.5
        trailCell.birthRate = 500
        trailCell.velocity = 80
        trailCell.scale = 0.008
        trailCell.alphaSpeed = -0.7
        trailCell.scaleSpeed = -0.008
        trailCell.scaleRange = 0.0008
        trailCell.beginTime = 0.01
        trailCell.duration = 1
        trailCell.emissionRange = CGFloat.pi / 8
        trailCell.emissionLongitude = CGFloat.pi * 2
        trailCell.yAcceleration = -200
        
        
        fireworkCell.contents = UIImage(named: "particle")?.cgImage
        fireworkCell.color = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        fireworkCell.lifetime = 300
        fireworkCell.birthRate = 20000
        fireworkCell.velocity = 100
        fireworkCell.scale = 0.01
        fireworkCell.spin = 2
        fireworkCell.alphaSpeed = -0.3
        fireworkCell.scaleSpeed = -0.005
        fireworkCell.beginTime = 1
        fireworkCell.duration = 0.2
        fireworkCell.emissionRange = CGFloat.pi * 2
        fireworkCell.yAcceleration = -200
       
        //firstEmitterCell是trailCell和fireworksCell的容器
        firstEmitterCell.emitterCells = [trailCell, fireworkCell]
//        firstEmitterCell.emitterCells = [trailCell]
        fireEmitterLayer.emitterCells = [firstEmitterCell]
//        fireEmitterLayer.emitterCells = [trailCell]

        view.layer.addSublayer(fireEmitterLayer)
        
    }
    
    
    
    struct ViewControllerView: UIViewControllerRepresentable {
        func makeUIViewController(context: Context) -> fireworkViewController {
            fireworkViewController()
        }
        
        
        func updateUIViewController(_ uiViewController: fireworkViewController, context: Context) {
        }
        
        typealias UIViewControllerType = fireworkViewController
        
    }
    struct ViewController_Previews: PreviewProvider {
        static var previews: some View {
            ViewControllerView()
                .previewDevice("iPhone 12 mini")
        }
    }
}
