//
//  ViewController.swift
//  Scene-Trans02
//
//  Created by 윤성호 on 2019. 1. 10..
//  Copyright © 2019년 윤성호. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // bar button item 클릭 이벤트
    @IBAction func moveByNavi(_ sender: Any) {
        
        // 두번째 뷰 컨트롤러 인스턴스를 가져온다
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") else {
            
            return
        }
        
        // 화면을 전환한다.
        self.navigationController?.pushViewController(uvc, animated: true)
    }
    
}

