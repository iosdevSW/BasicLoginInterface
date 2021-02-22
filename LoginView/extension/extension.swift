//
//  extension.swift
//  LoginView
//
//  Created by 신상우 on 2021/02/22.
//

import UIKit

extension UIViewController {
    ///UIViewController를 상속 받아 모든 ViewController에서 공통으로 적용할 수 있는 메소드를 만들 수 있다.
    func hideKeyboardWhenTapped(){
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = false // 이게 뭔지는 용쌤한테 듣자! 아무튼 버튼을눌러도 키보드가내려가게함
        view.addGestureRecognizer(tap) //view에 제스쳐추가
    }
    
    @objc func dismissKeyboard(){
        self.view.endEditing(true)
         //if I click anywhere in the view, the keyboard will disappear
    }
}
