//
//  ViewController.swift
//  SecondVC
//
//  Created by user on 29.09.2024.
//

import UIKit

class ViewController: UIViewController {
     

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //Шаг1. Метод для отображения второго экрана
    func showSecondVC() {
        let storyboard = UIStoryboard(name: "secondVC", bundle: nil)
        let secondVC = storyboard.instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
        //Шаг 5. Задаем делегата. Таким образом этот вью контроллер является делегатом в SecondViewController
        secondVC.delegate = self
        present(secondVC, animated: true)
    }


    //При нажатии на кнопку вызывается этот метод и внутри вызывается метод showSecondVC()
    @IBAction func didTapButton() {
        showSecondVC()
    }
}


//Шаг 6. Подписываемся под протокол делегата
extension ViewController: SecondViewControllerDelegate {
    func didEnterText(text: String?) {
        print(text)
    }
}

