//
//  ViewController.swift
//  AVMIDI.mac
//
//  Created by Adam Nemecek on 9/18/16.
//  Copyright © 2016 Adam Nemecek. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    var sound:Sound!
    var sampler:MIDISampler!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.sound = Sound()
        self.sampler = MIDISampler()
    }

    @IBAction func playAction(_ sender: NSButton) {
        sound.togglePlaying()
    }
    
    @IBAction func samplerDown(_ sender: NSButton) {
        sampler.hstart()
    }
    
    @IBAction func samplerUp(_ sender: NSButton) {
        sampler.hstop()
    }

    @IBAction func marimbaDown(_ sender: NSButton) {
        sampler.mstart()
    }
    @IBAction func marimbaUp(_ sender: NSButton) {
        sampler.mstop()
    }
}

