//
//  ViewController.swift
//  Controllers
//
//  Created by Светлана on 2.10.22.
//

import UIKit

class FirstViewController: UIViewController {
    // MARK: - Public properties
    public var modelText = MyModel(firstLine: "", secondLine: "", thirdLine: "")
    // MARK: - Private properties
    public let text: String = "Ты серьезно зашел так далеко?"
    
    // MARK: - IBOutlets
    @IBOutlet weak var labelFirstLine: UILabel!
    @IBOutlet weak var labelSecondLine: UILabel!
    @IBOutlet weak var labelThirdLine: UILabel!
    

    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabelsHidden(true)
        view.backgroundColor = .gray
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let secondController = segue.destination as? SecondViewController {
            secondController.text = text
        }
    }
    // MARK: - Public methods
    public func setLabels() {
        labelFirstLine.text = modelText.firstLine
        labelSecondLine.text = modelText.secondLine
        labelThirdLine.text = modelText.thirdLine
    }
    public func setLabelsHidden(_ bool: Bool) {
        labelFirstLine.isHidden = bool
        labelSecondLine.isHidden = bool
        labelThirdLine.isHidden = bool
    }
    // MARK: - IBActions
    @IBAction func goToSecondViewController(_ sender: Any) {
        performSegue(withIdentifier: "toSecondView", sender: self)
    }
}

