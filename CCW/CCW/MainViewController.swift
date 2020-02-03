//
//  ViewController.swift
//  CCW
//
//  Created by seungbong on 2020/02/02.
//  Copyright © 2020 한승희. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //test
        idTextField.text = "hello"
        pwTextField.text = "123123"
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        idTextField.text = ""
//        pwTextField.text = ""
    }
    
    override func viewWillDisappear(_ animated: Bool) {

    }
    
    @IBAction func clickedSigninBtn(_ sender: Any) {
        
        let id = idTextField.text ?? ""
        let pw = pwTextField.text ?? ""
        
        if id.count > 0 && pw.count > 0 {
            
            let savedId: String = UserDefaults.standard.value(forKey: "userId") as? String ?? ""
            let savedPw: String = UserDefaults.standard.value(forKey: "userPw") as? String ?? ""
            
            if id == savedId && pw == savedPw {
                
                let storyboardToPresent: UIStoryboard = UIStoryboard(name: "FrontMain", bundle: nil)
                let vc: MainTabbarViewController = storyboardToPresent.instantiateViewController(identifier: "CocoWorldTabbar") as! MainTabbarViewController
                
                self.navigationController?.pushViewController(vc, animated: true)
                //self.present(vc, animated: true, completion: nil)
                SysUtils.makeToast(message: "코코월드에 들어오신 걸 환영합니다", durationTime: 3, delayTime: 0.2)
                
                idTextField.text = ""
                pwTextField.text = ""

            } else {
                SysUtils.makeLongToast(message: "정보가 없습니다.\n코코월드에 들어올 수 없습니다.", durationTime: 3, delayTime: 0.2)
            }
        }
    }
    
    @IBAction func clickedSignUpBtn(_ sender: Any) {
        
        let storyboardToPresent: UIStoryboard = UIStoryboard(name: "SignUp", bundle: nil)
        let view: UIViewController = storyboardToPresent.instantiateViewController(identifier: "signUpFirst") as UIViewController
        self.present(view, animated: true, completion: nil)
    }
    
    
    @IBAction func tappedScreen(_ sender: Any) {
        // 키패드 등이 열려있으면 닫아준다.
        self.view.endEditing(true)
    }
    
}

