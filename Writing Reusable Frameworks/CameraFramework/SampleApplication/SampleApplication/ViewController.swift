//
//  ViewController.swift
//  SampleApplication
//
//  Created by Helior Colorado on 11/28/17.
//  Copyright © 2017 Helior Colorado. All rights reserved.
//

import UIKit
import CameraFramework
class ViewController: UIViewController {
    @IBOutlet weak var imageView:UIImageView!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Framework version: \(CameraViewController.getVersion()!)")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func startButtonTapped() {
        let camera = CameraViewController.init()
        camera.delegate = self
        camera.position = .back
        present(camera, animated: true, completion: nil)
    }
}

extension ViewController:CameraControllerDelegate {
    func stillImageCaptured(controller: CameraViewController, image: UIImage) {
        self.imageView.image = image
        controller.dismiss(animated: true, completion: nil)
    }
    
    func cancelButtonTapped(controller: CameraViewController) {
        controller.dismiss(animated: true, completion: nil)
    }
    

}
