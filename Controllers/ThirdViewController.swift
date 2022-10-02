//
//  ThirdViewController.swift
//  
//
//  Created by Светлана on 2.10.22.
//

import UIKit

class ThirdViewController: UIViewController {
        // MARK: - Public properties
        public var text = ""
        public var modelText = MyModel(firstLine: "", secondLine: "", thirdLine: "")
        // MARK: - Override methods
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .white
        }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let fourthController = segue.destination as? FourthViewController {
                fourthController.text = text
            }
        }
        override func viewWillDisappear(_ animated: Bool) {
            guard let structBack = self.presentingViewController as? SecondViewController else { return }
            structBack.modelText = modelText
        }
        // MARK: - IBActions
    @IBAction func goToFourthViewController(_ sender: Any) {
        performSegue(withIdentifier: "toFourthView", sender: self)
    }
    
}
