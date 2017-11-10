//
//  MicrophoneTask.swift
//  camelot2
//
//  Created by René Léveillé on 2017-09-13.
//  Copyright © 2017 René Léveillé. All rights reserved.
//

import Foundation
import ResearchKit

public var MicrophoneTask: ORKOrderedTask {
//    return ORKOrderedTask.audioTaskWithIdentifier("AudioTask", intendedUseDescription: "A sentence prompt will be given to you to read.", speechInstruction: "These are the last dying words of Joseph of Aramathea", shortSpeechInstruction: "The Holy Grail can be found in the Castle of Aaaaaaaaaaah", duration: 10, recordingSettings: nil, ptions: ORKPredefinedTaskOption.excludeAccelerometer)
    
    return ORKOrderedTask.audioTask(withIdentifier: "AudioTask", intendedUseDescription: "A sentence prompt will be given to you to read", speechInstruction: "These are the last dying words of Joseph of Aramathea", shortSpeechInstruction: "The Holy Grail can be found in the Castle of Aaaaaaaaaaah", duration: 10, recordingSettings: nil, options: ORKPredefinedTaskOption.excludeAccelerometer)
}
