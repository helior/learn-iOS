//
//  CameraViewController.swift
//  CameraFramework
//
//  Created by Helior Colorado on 11/28/17.
//  Copyright © 2017 Helior Colorado. All rights reserved.
//

import UIKit
import AVFoundation

public enum CameraPosition {
    case front
    case back
}

public final class CameraViewController: UIViewController {
    fileprivate var camera:Camera?
    open var position:CameraPosition = .back {
        didSet {
            guard let camera = self.camera else {
                return
            }
            camera.position = position
        }
    }
    
    public init() {
        super.init(nibName: nil, bundle: nil)
        self.camera = Camera(with: self)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let camera = self.camera else {
            return
        }
        createUI()
        camera.update()
    }
    
    func createUI() {
        guard let camera = self.camera else {
            return
        }
        self.view.layer.addSublayer(previewLayer)
    }
}
