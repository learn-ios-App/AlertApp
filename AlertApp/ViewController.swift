//
//  ViewController.swift
//  AlertApp
//
//  Created by 渡邊魁優 on 2023/05/16.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func action1(_ sender: Any) {
        //一番簡単な方法
        let title = "Action1"
        let massage = "Action1が押されました"
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "OK", style: .default, handler: { _ in print("アラートボタン1が押されたよ")})
        alert.addAction(okButton)

        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func action2(_ sender: Any) {
        alertAction(title: "Action2", message: "Action2が押されたよ", action: { _ in print("アラートボタン2が押されたよ") })
    }
    
    @IBAction func action3(_ sender: Any) {
        let title = "Action1"
        let massage = "Action1が押されました"
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "OK", style: .default, handler: { _ in print("アラートボタン3のOKが押されたよ")})
        let cancelButton = UIAlertAction(title: "Cancel", style: .default, handler: { _ in print("アラートボタン3のCancelが押されたよ")})
        alert.addAction(okButton)
        alert.addAction(cancelButton)

        self.present(alert, animated: true, completion: nil)
    }
    
    private func alertAction(title: String, message: String, action: ((UIAlertAction) -> Void)?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let button = UIAlertAction(title: "OK", style: .default, handler: action)
        alert.addAction(button)
        self.present(alert, animated: true, completion: nil)
    }
}

