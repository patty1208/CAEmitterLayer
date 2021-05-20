//
//  rabbitViewController.swift
//  CAEmitterLayer
//
//  Created by 林佩柔 on 2021/5/19.
//

import UIKit
import SwiftUI

class rabbitViewController: UIViewController {
    
    override func viewDidLoad() {
        view.backgroundColor = UIColor(red: 239/255, green: 232/255, blue: 215/255, alpha: 1)
        // https://www.schemecolor.com/giant-sea.php
        // 黃(239, 232, 215)
        // 綠(179, 220, 203)
        
        // 粉紅兔兔外框
        func drawRabbitOutline() -> UIBezierPath {
            let path = UIBezierPath()
            path.move(to: CGPoint(x: 375, y: 109))
            path.addCurve(to: CGPoint(x: 415, y: 109), controlPoint1: CGPoint(x: 377, y: -8), controlPoint2: CGPoint(x: 456, y: -10))
            path.addCurve(to: CGPoint(x: 457, y: 117), controlPoint1: CGPoint(x: 406, y: 112), controlPoint2: CGPoint(x: 465, y: 112))
            path.addCurve(to: CGPoint(x: 497, y: 130), controlPoint1: CGPoint(x: 466, y: 0), controlPoint2: CGPoint(x: 545, y: 0))
            path.addCurve(to: CGPoint(x: 485, y: 287), controlPoint1: CGPoint(x: 570, y: 175), controlPoint2: CGPoint(x: 562, y: 280))
            path.addCurve(to: CGPoint(x: 470, y: 400), controlPoint1: CGPoint(x: 502, y: 345), controlPoint2: CGPoint(x: 505, y: 390))
            path.addCurve(to: CGPoint(x: 465, y: 441), controlPoint1: CGPoint(x: 470, y: 427), controlPoint2: CGPoint(x: 470, y: 435))
            path.addCurve(to: CGPoint(x: 448, y: 434), controlPoint1: CGPoint(x: 450, y: 447), controlPoint2: CGPoint(x: 437, y: 444))
            path.addCurve(to: CGPoint(x: 446, y: 409), controlPoint1: CGPoint(x: 447, y: 423), controlPoint2: CGPoint(x: 448, y: 420))
            path.addCurve(to: CGPoint(x: 380, y: 407), controlPoint1: CGPoint(x: 434, y: 407), controlPoint2: CGPoint(x: 396, y: 410))
            path.addCurve(to: CGPoint(x: 357, y: 437), controlPoint1: CGPoint(x: 381, y: 441), controlPoint2: CGPoint(x: 372, y: 446))
            path.addCurve(to: CGPoint(x: 361, y: 392), controlPoint1: CGPoint(x: 363, y: 432), controlPoint2: CGPoint(x: 358, y: 425))
            path.addCurve(to: CGPoint(x: 344, y: 298), controlPoint1: CGPoint(x: 342, y: 371), controlPoint2: CGPoint(x: 345, y: 365))
            path.addCurve(to: CGPoint(x: 273, y: 297), controlPoint1: CGPoint(x: 318, y: 299), controlPoint2: CGPoint(x: 293, y: 298))
            path.addCurve(to: CGPoint(x: 248, y: 295), controlPoint1: CGPoint(x: 264, y: 308), controlPoint2: CGPoint(x: 253, y: 308))
            path.addCurve(to: CGPoint(x: 259, y: 288), controlPoint1: CGPoint(x: 230, y: 295), controlPoint2: CGPoint(x: 226, y: 278))
            path.addCurve(to: CGPoint(x: 321, y: 277), controlPoint1: CGPoint(x: 278, y: 284), controlPoint2: CGPoint(x: 296, y: 281))
            path.addCurve(to: CGPoint(x: 375, y: 109), controlPoint1: CGPoint(x: 211, y: 215), controlPoint2: CGPoint(x: 322, y: 110))
            
            // 畫面粉紅兔兔右邊的手
            path.move(to: CGPoint(x: 485, y: 287))
            path.addCurve(to: CGPoint(x: 478, y: 350), controlPoint1: CGPoint(x: 517, y: 400), controlPoint2: CGPoint(x: 455, y: 370))
            path.addCurve(to: CGPoint(x: 473, y: 313), controlPoint1: CGPoint(x: 475, y: 331), controlPoint2: CGPoint(x: 478, y: 326))
            
            // 粉紅兔兔尾巴
            path.move(to: CGPoint(x: 497, y: 366))
            path.addCurve(to: CGPoint(x: 490, y: 391), controlPoint1: CGPoint(x: 560, y: 352), controlPoint2: CGPoint(x: 543, y: 432))
            path.close()
            return path
        }
        func drawRabbitOutlineLayer() -> CAShapeLayer {
            let layer = CAShapeLayer()
            layer.path = drawRabbitOutline().cgPath
            layer.lineWidth = 5
            layer.strokeColor = UIColor.clear.cgColor
//                UIColor(red: 66/255, green: 38/255, blue: 28/255, alpha: 0.8).cgColor
            layer.fillColor = UIColor(red: 238/255, green: 192/255, blue: 201/255, alpha: 1).cgColor
            layer.lineCap = .round
            layer.lineJoin = .round
            return layer
        }
        // 粉紅兔兔五官
        func drawRabbitFace() -> UIBezierPath {
            let path1 = UIBezierPath()
            // 眼
            path1.move(to: CGPoint(x: 353, y: 185))
            path1.addQuadCurve(to: CGPoint(x: 367, y: 181), controlPoint: CGPoint(x: 361,y: 181))
            path1.move(to: CGPoint(x: 434, y: 195))
            path1.addQuadCurve(to: CGPoint(x: 445, y: 205), controlPoint: CGPoint(x: 441,y: 198))
            // 嘴
            path1.move(to: CGPoint(x: 390, y: 188))
            path1.addQuadCurve(to: CGPoint(x: 401, y: 191), controlPoint: CGPoint(x: 396,y: 190))
            
            path1.move(to: CGPoint(x: 395, y: 190))
            path1.addCurve(to: CGPoint(x: 373, y: 212), controlPoint1: CGPoint(x: 398, y: 223), controlPoint2: CGPoint(x: 378, y: 224))
            
            path1.move(to: CGPoint(x: 395, y: 207))
            path1.addCurve(to: CGPoint(x: 420, y: 219), controlPoint1: CGPoint(x: 399, y: 226), controlPoint2: CGPoint(x: 413, y: 228))
            
            path1.move(to: CGPoint(x: 385, y: 221))
            path1.addCurve(to: CGPoint(x: 411, y: 227), controlPoint1: CGPoint(x: 387, y: 252), controlPoint2: CGPoint(x: 409, y: 251))
            
            path1.move(to: CGPoint(x: 394, y: 259))
            path1.addQuadCurve(to: CGPoint(x: 406, y: 261), controlPoint: CGPoint(x: 401,y: 261))
            path1.close()
            return path1
        }
        func drawRabbitFaceLayer() -> CAShapeLayer{
            let layer1 = CAShapeLayer()
            layer1.path = drawRabbitFace().cgPath
            layer1.lineWidth = 5
            layer1.strokeColor = UIColor(red: 66/255, green: 38/255, blue: 28/255, alpha: 0.8).cgColor
            layer1.fillColor = UIColor.clear.cgColor
            layer1.lineCap = .round
            layer1.lineJoin = .round
            return layer1
        }
        // 腮紅
        func drawRabbitBlush() -> UIBezierPath {
            let path2 = UIBezierPath(arcCenter: CGPoint(x: 316, y: 208), radius: 22, startAngle: 0, endAngle: CGFloat.pi*2, clockwise: true)
            path2.move(to: CGPoint(x: 510, y: 232))
            path2.addArc(withCenter: CGPoint(x: 483, y: 232), radius: 27, startAngle: 0, endAngle: CGFloat.pi*2, clockwise: true)
            path2.close()
            return path2
        }
        func drawRabbitBlushLayer() -> CAShapeLayer{
            let layer2 = CAShapeLayer()
            layer2.path = drawRabbitBlush().cgPath
            layer2.fillColor = UIColor(red: 243/255, green: 167/255, blue: 180/255, alpha: 1).cgColor
            layer2.lineCap = .round
            layer2.lineJoin = .round
            return layer2
        }
        
        func drawRabbitWhiteTop() -> UIBezierPath {
            let path3 = UIBezierPath()
            path3.move(to: CGPoint(x: 358, y: 229))
            path3.addCurve(to: CGPoint(x: 437, y: 229), controlPoint1: CGPoint(x: 385, y: 112), controlPoint2: CGPoint(x: 444, y: 200))
            path3.addCurve(to: CGPoint(x: 358, y: 229), controlPoint1: CGPoint(x: 440, y: 295), controlPoint2: CGPoint(x: 350, y: 271))
            
            path3.move(to: CGPoint(x: 371, y: 333))
            path3.addCurve(to: CGPoint(x: 440, y: 334), controlPoint1: CGPoint(x: 377, y: 283), controlPoint2: CGPoint(x: 428, y: 268))
            path3.addCurve(to: CGPoint(x: 371, y: 333), controlPoint1: CGPoint(x: 442, y: 405), controlPoint2: CGPoint(x: 368, y: 385))
            path3.close()
            return path3
        }
        func drawRabbitWhiteTopLayer() -> CAShapeLayer{
            let layer3 = CAShapeLayer()
            layer3.path = drawRabbitWhiteTop().cgPath
            layer3.fillColor = UIColor(red: 255/255, green: 253/255, blue: 254/255, alpha: 1).cgColor
            layer3.lineCap = .round
            layer3.lineJoin = .round
            return layer3
        }
        func drawRabbitWhiteBottom() -> UIBezierPath {
            let path3 = UIBezierPath()
            path3.move(to: CGPoint(x: 358, y: 229))
            path3.addCurve(to: CGPoint(x: 437, y: 229), controlPoint1: CGPoint(x: 385, y: 112), controlPoint2: CGPoint(x: 444, y: 200))
            path3.addCurve(to: CGPoint(x: 358, y: 229), controlPoint1: CGPoint(x: 440, y: 295), controlPoint2: CGPoint(x: 350, y: 271))
            
            path3.move(to: CGPoint(x: 371, y: 333))
            path3.addCurve(to: CGPoint(x: 440, y: 334), controlPoint1: CGPoint(x: 377, y: 283), controlPoint2: CGPoint(x: 428, y: 268))
            path3.addCurve(to: CGPoint(x: 371, y: 333), controlPoint1: CGPoint(x: 442, y: 405), controlPoint2: CGPoint(x: 368, y: 385))
            path3.close()
            return path3
        }
        func drawRabbitWhiteBottomLayer() -> CAShapeLayer{
            let layer3 = CAShapeLayer()
            layer3.path = drawRabbitWhiteBottom().cgPath
            layer3.fillColor = UIColor(red: 255/255, green: 253/255, blue: 254/255, alpha: 1).cgColor
            layer3.lineCap = .round
            layer3.lineJoin = .round
            return layer3
            
        }
        // 粉紅兔兔的嘴巴顏色
        func drawRabbitMouth() -> UIBezierPath {
            let path4 = UIBezierPath()
            path4.move(to: CGPoint(x: 385, y: 221))
            path4.addCurve(to: CGPoint(x: 411, y: 225), controlPoint1: CGPoint(x: 387, y: 252), controlPoint2: CGPoint(x: 409, y: 251))
            path4.addCurve(to: CGPoint(x: 395, y: 207), controlPoint1: CGPoint(x: 413, y: 227), controlPoint2: CGPoint(x: 399, y: 225))
            path4.addCurve(to: CGPoint(x: 385, y: 221), controlPoint1: CGPoint(x: 393, y: 208), controlPoint2: CGPoint(x: 395, y: 215))
            path4.close()
            return path4
        }
        func drawRabbitMouthLayer() -> CAShapeLayer {
            let layer4 = CAShapeLayer()
            layer4.path = drawRabbitMouth().cgPath
            layer4.fillColor = UIColor(red: 266/255, green: 168/255, blue: 180/255, alpha: 0.8).cgColor
            layer4.lineCap = .round
            layer4.lineJoin = .round
            return layer4
        }
        
        let layerRabbitOutline = drawRabbitOutlineLayer()
        let layerRabbitFace = drawRabbitFaceLayer()
        let layerRabbitBlush = drawRabbitBlushLayer()
        let layerRabbitWhiteTop = drawRabbitWhiteTopLayer()
        let layerRabbitWhiteBottom = drawRabbitWhiteBottomLayer()
        let layerRabbitMouth = drawRabbitMouthLayer()
        
        // 縮放
        func scaleAndTran(object: CAShapeLayer){
            object.setAffineTransform(CGAffineTransform(translationX: -125, y: 220).scaledBy(x: 0.8, y: 0.8)
            )
        }
        
        let objects = [layerRabbitOutline, layerRabbitFace, layerRabbitBlush, layerRabbitWhiteTop, layerRabbitWhiteBottom, layerRabbitMouth]
        
        for object in objects {
            scaleAndTran(object: object)
        }
        
        // 動畫-線條
        func animationStroke(layer: CAShapeLayer) {
            // 動畫模式
            let animation = CABasicAnimation(keyPath: "strokeEnd")
            animation.fromValue = -0.5
            animation.toValue = 1.5
            
            // 動畫持續時間
            animation.duration = 5
            
            // 動畫延遲開始時間
            animation.beginTime = CACurrentMediaTime() + -1
            
            // 動畫的速度
            animation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
            
            // 重複動畫
            animation.repeatCount = .greatestFiniteMagnitude
            
            layer.add(animation, forKey: nil)
            
        }
        // 動畫-顏色
        func animationColor(layer: CAShapeLayer) {
            
            // 動畫模式
            let animation = CABasicAnimation(keyPath: "fillColor")
            
            // 開始顏色
            animation.fromValue = UIColor.clear.cgColor
            
            // 結束顏色(沒有指定為屬性值)
            //            animation.fromValue = UIColor.red.cgColor
            
            // 動畫持續時間
            animation.duration = 5
            
            // 動畫延遲開始時間
            //            animation.beginTime = CACurrentMediaTime() + 2
            
            // 動畫的速度
            animation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
            
            // 重複動畫
            animation.repeatCount = .greatestFiniteMagnitude
            
            layer.add(animation, forKey: "colorAnimation")
        }

        // 加入動畫-路徑圖層
        func viewAnimatedPath() -> UIView {
            let viewAnimatedPath = UIView(frame: view.bounds)
            viewAnimatedPath.layer.addSublayer(layerRabbitOutline)
            viewAnimatedPath.layer.addSublayer(layerRabbitWhiteTop)
            viewAnimatedPath.layer.addSublayer(layerRabbitWhiteBottom)
            viewAnimatedPath.layer.addSublayer(layerRabbitMouth)
            viewAnimatedPath.layer.addSublayer(layerRabbitFace)
            viewAnimatedPath.layer.addSublayer(layerRabbitBlush)
            //        animationStroke(layer: layerRabbitOutline)
            //        animationStroke(layer: layerRabbitFace)
            return viewAnimatedPath
        }
        let viewAnimatedPath = viewAnimatedPath()
        
        // 加入動畫-顏色圖層
        func viewAnimatedColor() -> UIView {
        let viewAnimatedColor = UIView(frame: view.bounds)
        viewAnimatedColor.layer.addSublayer(layerRabbitOutline)
        viewAnimatedColor.layer.addSublayer(layerRabbitWhiteTop)
        viewAnimatedColor.layer.addSublayer(layerRabbitWhiteBottom)
        viewAnimatedColor.layer.addSublayer(layerRabbitMouth)
        viewAnimatedColor.layer.addSublayer(layerRabbitFace)
        viewAnimatedColor.layer.addSublayer(layerRabbitBlush)
        //        animationColor(layer: layerRabbitOutline)
        //        animationColor(layer: layerRabbitBlush)
        //        animationColor(layer: layerRabbitWhiteTop)
        //        animationColor(layer: layerRabbitWhiteBottom)
        //        animationColor(layer: layerRabbitMouth)
        return viewAnimatedColor
        }
        let viewAnimatedColor = viewAnimatedColor()
        
        
        // 時間差安排
        DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
            // 執行動作
        })
        
        
        func animatedEmitterCell(image: String) -> CAEmitterCell {
            // 動畫 CAEmitterLayer
            let snowEmitterCell = CAEmitterCell()
            snowEmitterCell.contents = UIImage(named: image)?.cgImage
            
            // 發射頻率
            snowEmitterCell.birthRate = 1
            // 維持時間
            snowEmitterCell.lifetime = 50
            
            // 縮放大小範圍,漸進變動
            snowEmitterCell.scale = CGFloat.random(in: 0.05...0.07)
            snowEmitterCell.scaleRange = 0.08123
//            snowEmitterCell.scaleSpeed = -0.02
            
            // 透明度(不太清楚改變差異)
    //        snowEmitterCell.alphaRange = 100
    //        snowEmitterCell.alphaSpeed = 3
            
            // 旋轉
            snowEmitterCell.spin = CGFloat.random(in: 0...3)
            snowEmitterCell.spinRange = 1
            
            // 移動速度
            snowEmitterCell.velocity = CGFloat.random(in: -5...5)
//            CGFloat(Int.random(in: 10...30)) // -20
            
            // 發射加速度
            snowEmitterCell.xAcceleration =  CGFloat.random(in: -3...3) // 5
            snowEmitterCell.yAcceleration =  CGFloat.random(in: 15...25) //40
            
            // 發射角度
            snowEmitterCell.emissionRange = CGFloat.pi
            return snowEmitterCell
        }
        
        
        let snowEmitterLayer = CAEmitterLayer()
        snowEmitterLayer.emitterCells = [animatedEmitterCell(image: "flower-2"), animatedEmitterCell(image: "flower"), animatedEmitterCell(image: "flower-blue"), animatedEmitterCell(image: "sakura"), animatedEmitterCell(image: "sakura-2"), animatedEmitterCell(image: "sunflower")]
        
        // 發射位置
        snowEmitterLayer.emitterPosition = CGPoint(x: view.bounds.width / 2, y: -60)
        snowEmitterLayer.emitterSize = CGSize(width: view.bounds.width, height: 0)
        snowEmitterLayer.emitterShape = .line
        
//        snowEmitterLayer.scale = 1
//        snowEmitterLayer.birthRate = 1
        view.layer.addSublayer(snowEmitterLayer)
        view.addSubview(viewAnimatedPath)
        view.addSubview(viewAnimatedColor)
//        view.layer.addSublayer(snowEmitterLayer)
    }
    
    struct ViewControllerView: UIViewControllerRepresentable {
        func makeUIViewController(context: Context) -> rabbitViewController {
            rabbitViewController()
        }
        
        func updateUIViewController(_ uiViewController: rabbitViewController, context: Context) {
        }
        
        typealias UIViewControllerType = rabbitViewController
        
        
    }
    struct ViewController_Previews: PreviewProvider {
        static var previews: some View {
            ViewControllerView()
                .previewDevice("iPhone 12 mini")
        }
    }
}





