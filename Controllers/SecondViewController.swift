//
//  SecondViewController.swift
//  
//
//  Created by Светлана on 2.10.22.
//

import UIKit

class SecondViewController: UIViewController {

    // MARK: - Public properties
    public var text: String = ""
    public var modelText = MyModel(firstLine: "", secondLine: "", thirdLine: "")
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let thirdController = segue.destination as? ThirdViewController {
            thirdController.text = text
        }
    }
    override func viewWillDisappear(_ animated: Bool) {
        guard let structBack = self.presentingViewController as? FirstViewController else { return }
        structBack.modelText = modelText
        structBack.setLabels()
        structBack.setLabelsHidden(false)
    }
    // MARK: - IBActions
    @IBAction func goToThirdViewController(_ sender: Any) {
        performSegue(withIdentifier: "toThirdView", sender: self)
    }
}
