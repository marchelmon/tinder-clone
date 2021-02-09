//
//  SettingsCell.swift
//  tinder clone
//
//  Created by marchelmon on 2021-02-08.
//

import UIKit

protocol SettingsCellDelegate: class {
    func settingsCell(_ cell: SettingsCell, wantsToUpdateUserWithValue value: String, for section: SettingsSection)
}

class SettingsCell: UITableViewCell {
    
    //MARK: - Properties
    
    weak var delegate: SettingsCellDelegate?
    
    var viewModel: SettingsViewModel! {
        didSet { configure() }
    }
    
    lazy var inputField: UITextField = {
        let paddingView = UIView()
        paddingView.setDimensions(height: 50, width: 28)
        
        let tf = UITextField()
        tf.borderStyle = .none
        tf.font = UIFont.systemFont(ofSize: 16)
        tf.leftView = paddingView
        tf.leftViewMode = .always
        
        tf.addTarget(self, action: #selector(handleUpdateUserInfo), for: .editingDidEnd)
        
        return tf
    } ()
    
    var sliderStack = UIStackView()
    
    let minAgeLabel = UILabel()
    let maxAgeLabel = UILabel()
    
    lazy var minAgeSlider = createAgeRangeSlider()
    lazy var maxAgeSlider = createAgeRangeSlider()
    
    
    //MARK: - Lifecycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        minAgeLabel.text = "Min: 18"
        maxAgeLabel.text = "Max: 60"
        
        self.contentView.addSubview(inputField)
        
        inputField.fillSuperview()
        
        let minStack = UIStackView(arrangedSubviews: [minAgeLabel, minAgeSlider])
        minStack.spacing = 24
        
        let maxStack = UIStackView(arrangedSubviews: [maxAgeLabel, maxAgeSlider])
        maxStack.spacing = 24
        
        sliderStack = UIStackView(arrangedSubviews: [minStack, maxStack])
        sliderStack.axis = .vertical
        sliderStack.spacing = 16
        
        addSubview(sliderStack)
        sliderStack.centerY(inView: self)
        sliderStack.anchor(left: leftAnchor, right: rightAnchor, paddingLeft: 24, paddingRight: 24)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Actions
    
    @objc func handleUpdateUserInfo(sender: UITextField) {
        guard let value = sender.text else { return }
        delegate?.settingsCell(self, wantsToUpdateUserWithValue: value, for: viewModel.section)
    }
    
    @objc func handleAgeRangeChanged() {
        
    }
    
    //MARK: - Helpers
    
    func configure() {
        inputField.isHidden = viewModel.shouldHideInputField
        sliderStack.isHidden = viewModel.shouldHideSlider
        inputField.placeholder = viewModel.placeholderText
        inputField.text = viewModel.value
    }
    
    func createAgeRangeSlider() -> UISlider  {
        let slider = UISlider()
        slider.minimumValue = 18
        slider.maximumValue = 60
        slider.addTarget(self, action: #selector(handleAgeRangeChanged), for: .valueChanged)
        return slider
    }

    
    
}
