//
//  ViewController.swift
//  Fuzzy-Logic-App
//
//  Created by Hugo on 17/07/17.
//  Copyright © 2017 Hugo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    /* Canvas view */
    @IBOutlet weak var canvas: UIView!
    
    /* Objects' views */
    private var tunnelView: UIView!
    private var targetView: UIView!
    private var ballView: UIView!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        /* Drawing views */
        let tunnelViewPadding: CGFloat = 16
        let ballViewSize: CGFloat = 40
        
        /* Setting Tunnel View */
        tunnelView = UIView(
            frame: CGRect(
                x: canvas.bounds.midX - ballViewSize,
                y: canvas.bounds.minY + tunnelViewPadding,
                width: ballViewSize * 2,
                height: canvas.bounds.maxY - tunnelViewPadding * 2
            )
        )
        
        tunnelView.backgroundColor = UIColor.darkGray
        tunnelView.layer.borderWidth = 1
        tunnelView.layer.borderColor = UIColor.black.cgColor
        
        /* Setting Target View */
        targetView = UIView(
            frame: CGRect(
                x: canvas.bounds.midX - ballViewSize * 0.75,
                y: canvas.bounds.midY - ballViewSize / 2,
                width: ballViewSize * 1.5,
                height: ballViewSize
            )
        )
        
        targetView.backgroundColor = .lightGray
        targetView.layer.borderWidth = 1
        targetView.layer.borderColor = UIColor.black.cgColor
        targetView.layer.cornerRadius = ballViewSize / 2
        
        /* Setting Ball View */
        ballView = UIView(
            frame: CGRect(
                x: canvas.bounds.midX - ballViewSize / 2,
                y: canvas.bounds.midY - ballViewSize / 2,
                width: ballViewSize,
                height: ballViewSize
            )
        )
        
        ballView.backgroundColor = .cyan
        ballView.layer.borderWidth = 1
        ballView.layer.borderColor = UIColor.black.cgColor
        ballView.layer.cornerRadius = ballViewSize / 2
        
        /* Setting Adding views */
        canvas.addSubview(tunnelView)
        canvas.addSubview(targetView)
        canvas.addSubview(ballView)
    }
}

