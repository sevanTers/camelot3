//
//  ConsentDocument.swift
//  camelot2
//
//  Created by René Léveillé on 2017-09-13.
//  Copyright © 2017 René Léveillé. All rights reserved.
//

import Foundation
import ResearchKit

public var ConsentDocument: ORKConsentDocument {
    
    let consentDocument = ORKConsentDocument()
    consentDocument.title = "Example Consent"
    
    // consent sections
    let consentSectionTypes: [ORKConsentSectionType] = [
        .overview,
        .dataGathering,
        .privacy,
        .dataUse,
        .timeCommitment,
        .studySurvey,
        .studyTasks,
        .withdrawing
    ]
    
    // populate
    let consentSections: [ORKConsentSection] = consentSectionTypes.map { contentSectionType in
        let consentSection = ORKConsentSection(type: contentSectionType)
        consentSection.summary = "If you wish to execute this study you must accept the following terms."
        consentSection.content = "In this study you will be asked five, wait, no, three! questions. You will also have your voice recorded for ten seconds. hello world!"
        consentSection.formalTitle = "AIDS"
        return consentSection
    }
    
    consentDocument.sections = consentSections
    
    // signature
    consentDocument.addSignature(ORKConsentSignature(forPersonWithTitle: nil, dateFormatString: nil, identifier: "ConsentDocumentParticipantSignature"))
    
    return consentDocument
}
