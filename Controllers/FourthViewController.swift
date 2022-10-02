//
//  FourthViewController.swift
//  
//
//  Created by Светлана on 2.10.22.
//

import UIKit

class FourthViewController: UIViewController {
    // MARK: - Public properties
    public var text = ""
    public var modelText = MyModel(firstLine: "", secondLine: "", thirdLine: "")
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let fifthController = segue.destination as? FifthViewController {
            fifthController.text = text
        }
    }
    override func viewWillDisappear(_ animated: Bool) {
        guard let structBack = self.presentingViewController as? ThirdViewController else { return }
        structBack.modelText = modelText
    }
    // MARK: - IBActions
    @IBAction func goToFifthViewController(_ sender: Any) {
        performSegue(withIdentifier: "toFifthView", sender: self)
    }
}
