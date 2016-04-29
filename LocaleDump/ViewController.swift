//
//  ViewController.swift
//  LocaleDump
//
//  Created by Jorge Bernal Ordovas on 29/04/16.
//  Copyright © 2016 WordPress. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var textView: UITextView! {
        didSet {
            populateTextView()
        }
    }

    private func populateTextView() {
        let currentLocale = NSLocale.currentLocale().localeIdentifier
        let preferredLanguages = NSLocale.preferredLanguages().joinWithSeparator(", ")
        let availableLocales = NSLocale.availableLocaleIdentifiers().sort()
        let availableLanguages = NSLocale.ISOLanguageCodes().sort()

        var text = ""
        text += "Language: \(preferredLanguages)\n"
        text += "Locale: \(currentLocale)\n"
        text += "\n\n"
        text += "All Languages:\n"
        text += availableLanguages.joinWithSeparator("\n")
        text += "\n\n"
        text += "All Locales:\n"
        text += availableLocales.joinWithSeparator("\n")
        textView.text = text
    }
}

