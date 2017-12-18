//
//  Camera.swift
//  CameraFramework
//
//  Created by Helior Colorado on 11/30/17.
//  Copyright © 2017 Helior Colorado. All rights reserved.
//

import UIKit
import AVFoundation

class Camera: NSObject {
    var controller:CameraViewController?
    
    required init(with controller:CameraViewController) {
        self.controller = controller
    }
    
    fileprivate var session = AVCaptureSession()
    
    func update() {
        if let currentInput = self.videoInput {
            self.session.removeInput(currentInput)
            self.session.removeOutput(self.videoOutput)
        }
    }
    
    fileprivate var discoverySession:AVCaptureDevice.DiscoverySession? {
        return AVCaptureDevice.DiscoverySession(deviceTypes: [AVCaptureDevice.DeviceType.builtInWideAngleCamera], mediaType: AVMediaType.video, position:AVCaptureDevice.Position.unspecified)
    }
    
    var videoInput:AVCaptureDeviceInput?
    var videoOutput = AVCaptureVideoDataOutput()
    
    private func getDevice(with position:AVCaptureDevice.Position) -> AVCaptureDevice? {
        guard let discoverySession = self.discoverySession
            else {
                return nil
        }
        
        for device in discoverySession.devices {
            if device.position == position {
                return device
            }
        }
        return nil
    }
}
