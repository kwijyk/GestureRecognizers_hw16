//
//  ViewController.swift
//  Spalah_hw6_GestureRecognizers
//
//  Created by Sergey Gaponov on 11/25/17.
//  Copyright © 2017 Sergey Gaponov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ibMovableView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ibMovableView.layer.cornerRadius = ibMovableView.frame.size.width / 4
        setupGesture()
    }
    
    // MARK: - Setup GestureRecognizer
    private func setupGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapAction(gesture:)))
        view.addGestureRecognizer(tapGesture)
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(panAction(gesture:)))
        ibMovableView.addGestureRecognizer(panGesture)
        
        let rotationGesture = UIRotationGestureRecognizer(target: self, action: #selector(rotateAction(gesture:)))
        ibMovableView.addGestureRecognizer(rotationGesture)
        
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(pinchAction(gesture:)))
        ibMovableView.addGestureRecognizer(pinchGesture)
    }
    
    // MARK: - GestureRecognizer selectors
    @objc private func tapAction(gesture: UITapGestureRecognizer) {
        ibMovableView.backgroundColor = UIColor.randomColor
    }
    
    @objc private func panAction(gesture: UIPanGestureRecognizer) {
        
        let translation = gesture.translation(in: self.view)
        if let view = gesture.view {
            view.center = CGPoint(x:view.center.x + translation.x,
                                  y:view.center.y + translation.y)
        }
        gesture.setTranslation(CGPoint.zero, in: self.view)
    }
    
    @objc private func rotateAction(gesture: UIRotationGestureRecognizer) {
     
        if let view = gesture.view {
            view.transform = view.transform.rotated(by: gesture.rotation)
            gesture.rotation = 0
        }
    }
    
    @objc private func pinchAction(gesture: UIPinchGestureRecognizer) {
        if let view = gesture.view {
            view.transform = view.transform.scaledBy(x: gesture.scale, y: gesture.scale)
            gesture.scale = 1
        }
    }
}

