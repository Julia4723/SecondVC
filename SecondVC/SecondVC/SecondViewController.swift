//
//  SecondViewController.swift
//  SecondVC
//
//  Created by user on 29.09.2024.
//

import UIKit

//Шаг 2. Создаем протокол делегата
protocol SecondViewControllerDelegate: AnyObject {
    func didEnterText(text: String?)
}


class SecondViewController: UIViewController {
    
    @IBOutlet weak var actionButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    
    //Шаг 3.Объявляем переменную делегата
    weak var delegate: SecondViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Прописываем какое событие будет происходить при нажатии  на кнопку
        actionButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    
    @objc func didTapButton() {
        //Шаг 4. Прописываем действие для делегата
        delegate?.didEnterText(text: textField.text)
    }
}
