//
//  DefinitionViewController.swift
//  DSVocabulary
//
//  Created by Axel Corro on 12/12/21.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?
    
    @IBOutlet weak var wordLabel: UILabel!
    
    @IBOutlet weak var definitionText: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    func updateViews() {
        guard let vocabWord = vocabWord else {
            return
        }
        wordLabel.text = vocabWord.word
        definitionText.text = vocabWord.definition
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
