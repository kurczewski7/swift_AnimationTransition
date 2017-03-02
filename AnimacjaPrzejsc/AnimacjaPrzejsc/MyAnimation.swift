//
//  MyAnimation.swift
//  AnimacjaPrzejsc
//
//  Created by Slawek Kurczewski on 02.03.2017.
//  Copyright © 2017 Slawomir Kurczewski. All rights reserved.
//

import UIKit

class MyAnimation: NSObject, UIViewControllerAnimatedTransitioning, UIViewControllerTransitioningDelegate {
    let duration=1.0
    
    var isPresenting=true
    let opoznienie: TimeInterval=0.0
    let tlumienie: CGFloat=0.5
    let szybkoscAnim: CGFloat=0.5

    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let container=transitionContext.containerView
        
        let srcView=transitionContext.view(forKey: UITransitionContextViewKey.from)
        let dstView=transitionContext.view(forKey: UITransitionContextViewKey.to)
        
        let fwdTransform=CGAffineTransform(rotationAngle: CGFloat(M_PI_2))
        let bwdTransform=CGAffineTransform(rotationAngle: CGFloat(-M_PI_2))
        
        dstView?.transform=isPresenting ? fwdTransform : bwdTransform
        
        container.addSubview(srcView!)
        container.addSubview(dstView!)
        
        let duration = transitionDuration(using: transitionContext)
        updateAnchors(sourceView: srcView!, destinationView: dstView!)
        
        UIView.animate(withDuration: duration, delay: opoznienie, usingSpringWithDamping: tlumienie, initialSpringVelocity: szybkoscAnim, options: UIViewAnimationOptions(), animations:
            {
                srcView?.transform=self.isPresenting ? bwdTransform : fwdTransform
                dstView?.transform=CGAffineTransform.identity
            }, completion:
            {
                finished in transitionContext.completeTransition(true)
            })
    }
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return duration
    }
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        isPresenting=true
        return self
    }
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        isPresenting=false
        return self
    }
    func updateAnchors(sourceView: UIView, destinationView: UIView){
        let topLeftCorner = CGPoint(x:0,y:0)
        sourceView.layer.anchorPoint=topLeftCorner
        sourceView.layer.position=topLeftCorner

        destinationView.layer.anchorPoint=topLeftCorner
        destinationView.layer.position=topLeftCorner

    }
}
