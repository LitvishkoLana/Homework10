//
//  FifthViewController.swift

import UIKit

class FifthViewController: UIViewController {
    // MARK: - Public properties
    public var text = ""
    public let modelText = MyModel(firstLine: "Поздравляем!", secondLine: "Тебе придется", thirdLine: "Начать все с начала")
    // MARK: - IBOutlets
    @IBOutlet weak var textLabel: UILabel!
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    override func viewWillDisappear(_ animated: Bool) {
        guard let structBack = self.presentingViewController as? FourthViewController else { return }
        structBack.modelText = modelText
    }
    // MARK: - IBActions
    @IBAction func finalButton(_ sender: Any) {
        textLabel.text = text
    }
}
