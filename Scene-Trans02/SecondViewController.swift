//
//  SecondViewController.swift
//  Scene-Trans02
//
//  Created by 윤성호 on 2019. 1. 10..
//  Copyright © 2019년 윤성호. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    /**
     뷰 컨트롤러를 이용한 화면 전환
      - 이전 화면으로 전환 : dismiss(animated:)
     
     내비게이션 컨트롤러를 이용한 화면전환
      - 이전 화면으로 전환 : popViewController(animated:)
     **/
    
    // back 버튼 이벤트 -> presenting한 뷰 컨트롤러에서 dismiss
    @IBAction func back(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
    // back2 버튼 이벤트 -> 내비게이션 컨트롤러에서 popViewController
    @IBAction func back2(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
