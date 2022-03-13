//
//  ViewController.swift
//  12(Fgma)
//
//  Created by Mark Goncharov on 11.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK - view

    private lazy var label1: UILabel = {
        let label = UILabel()
        label.text = Constans.Text.skillbox
        label.textColor = Constans.Colors.blackIos
        label.font = Constans.fonts.systemHeading
        return label
    }()
    private lazy var label2: UILabel = {
        let label = UILabel()
        label.text = Constans.Text.hello
        label.textColor = Constans.Colors.grayIos
        label.font = Constans.fonts.ui30Regular
        return label
    }()
    private lazy var label3: UILabel = {
        let label = UILabel()
        label.text = Constans.Text.weAreGladTo
        label.textColor = Constans.Colors.greenColorsIos
        label.font = Constans.fonts.systemText
        return label
    }()
    private lazy var label4: UILabel = {
        let label = UILabel()
        let string = Constans.Text.seeYou
        let attributedString : NSMutableAttributedString = NSMutableAttributedString(string: string)
        if let dashIndex = string.firstIndex(of: "-") {
            attributedString.addAttribute(
                .foregroundColor,
                value: UIColor.systemRed,
                range: NSRange(string.startIndex ..< dashIndex, in: string))
            attributedString.addAttribute(.foregroundColor, value: UIColor.systemBlue, range: NSRange(dashIndex ..< string.endIndex, in: string))
            
        }
        label.attributedText = attributedString
        return label
    }()
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = Constans.image.stars
        return imageView
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 16
        stackView.addArrangedSubview(label1)
        stackView.addArrangedSubview(label2)
        stackView.addArrangedSubview(label3)
        stackView.addArrangedSubview(label4)
        stackView.addArrangedSubview(imageView)
        return stackView
    }()
    
    // MARK - life
    
    //especioally you!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstans()
    }

    // MARK - private
    
    private func setupViews() {
        view.addSubview(stackView)
    }
    private func setupConstans() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.widthAnchor.constraint(equalToConstant: 250).isActive = true
    }
}

