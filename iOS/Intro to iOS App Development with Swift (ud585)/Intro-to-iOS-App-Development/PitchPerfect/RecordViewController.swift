//
//  RecordViewController.swift
//  PitchPerfect
//
//  Created by Spyridion Georges Fotakos on 19/06/2018.
//  Copyright © 2018 Spyridion Georges Fotakos. All rights reserved.
//

import UIKit
import AVFoundation

class RecordViewController: UIViewController, AVAudioRecorderDelegate {

    var audioRecorder: AVAudioRecorder!
    
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    enum RecordingState { case recording, notRecording }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordingButton.isEnabled = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "stopRecordingSegue") {
            let playSoundsVC = segue.destination as! SoundPlaybackViewController
            let recorderAudioUrl = sender as! URL
            playSoundsVC.recordedAudioURL = recorderAudioUrl
        }
    }

    @IBAction func recordAudio(_ sender: Any) {
        configureUI(.recording)
        
        let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask, true)[0] as String
        let recordingName = "recordedVoice.wav"
        let pathArray = [dirPath, recordingName]
        let filePath = URL(string: pathArray.joined(separator: "/"))
        
        let session = AVAudioSession.sharedInstance()
        try! session.setCategory(AVAudioSessionCategoryPlayAndRecord, with:AVAudioSessionCategoryOptions.defaultToSpeaker)
        
        try! audioRecorder = AVAudioRecorder(url: filePath!, settings: [:])
        audioRecorder.delegate = self
        audioRecorder.isMeteringEnabled = true
        audioRecorder.prepareToRecord()
        audioRecorder.record()
    }
    
    @IBAction func stopRecording(_ sender: Any) {
        configureUI(.notRecording)
        audioRecorder.stop()
        let audioSession = AVAudioSession.sharedInstance()
        try! audioSession.setActive(false)
    }
    
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        if (flag) {
            performSegue(withIdentifier: "stopRecordingSegue", sender: audioRecorder.url)
        } else {
            print ("Recording was not successful")
        }
    }
    
    func configureUI(_ recordState: RecordingState) {
        switch(recordState) {
        case .recording:
            recordingLabel.text = "Recording..."
            recordButton.isEnabled = false
            stopRecordingButton.isEnabled = true
        case .notRecording:
            recordingLabel.text = "Tap to record"
            recordButton.isEnabled = true
            stopRecordingButton.isEnabled = false
        }
    }
}

