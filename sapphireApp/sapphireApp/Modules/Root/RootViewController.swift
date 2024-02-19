//
//  RootViewController.swift
//  projectMVP
//
//  Created by Alena on 27.10.2023.
//

import UIKit

final class RootViewController: ViewController, PresenterContainer, RootViewInput {
    
    @IBOutlet weak var imageTitle: UIImageView!
    
    @IBOutlet weak var labelTitle: UILabel!
    
    @IBOutlet weak var labelTitleTwo: UILabel!
    
    @IBOutlet weak var buttonRoot: UIButton!
    
    var presenter: RootViewOutput!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUi()
    }
    
    private func configureUi() {
        
        imageTitle.image = UIImage(named: "imageTitle")
        imageTitle.contentMode = .scaleAspectFill
        imageTitle.layer.cornerRadius = 10
        
        labelTitle.text = "You are the muse. Sapphire - creation"
        labelTitle.textColor = UIColor.greenMain
        labelTitle.font = UIFont.systemFont(ofSize: 26, weight: .semibold)
        labelTitle.numberOfLines = 1
        labelTitle.adjustsFontSizeToFitWidth = true
        labelTitle.minimumScaleFactor = 0.7
        
        labelTitleTwo.text = "The divine essence of femininity is revealed in the skin's touch, in the skin's word,in the skin's aroma. The woman is the goddess that everyone worships. Sapphire gives you this strength."
        labelTitleTwo.numberOfLines = 4
        labelTitleTwo.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        labelTitleTwo.adjustsFontSizeToFitWidth = true
        labelTitleTwo.minimumScaleFactor = 0.7
        labelTitleTwo.textAlignment = .left
        
        let attributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.systemFont(ofSize: 18, weight: .medium),
            .foregroundColor: UIColor.white
        ]
        let attributedTitle = NSAttributedString(string: "TO THE CATALOG", attributes: attributes)
        buttonRoot.setAttributedTitle(attributedTitle, for: .normal)
        buttonRoot.backgroundColor = UIColor.greenMain
        buttonRoot.layer.cornerRadius = 5
    }
                
    func update() {
    }
    
    var viewModel: RootViewModel {
        return presenter.viewModel
    }
      
    
}


