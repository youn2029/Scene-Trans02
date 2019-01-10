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
    
    /**
     뷰 컨트롤러를 이용한 화면 전환
      - 새로운 화면으로 전환 : present(_:animated:)
     
     내비게이션 컨트롤러를 이용한 화면전환
      - 새로운 화면으로 전환 : pushViewController(_:animated:)     
     **/

    // bar button item 클릭 이벤트 -> 내비게이션 컨트롤러에서 pushViewCotroller
    @IBAction func moveByNavi(_ sender: Any) {
        
        // 두번째 뷰 컨트롤러 인스턴스를 가져온다
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") else {
            
            return
        }
        
        // 화면을 전환한다.
        self.navigationController?.pushViewController(uvc, animated: true)
    }
    
    // movePresent버튼을 이용해 화면 전환 -> 해당 컨트롤러에 present
    @IBAction func movePresent(_ sender: Any) {
        
        // identifie id를 통해 뷰 컨트롤러의 인스턴스 가져오기
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") else {
            
            return
        }
        
        // 화면 전환 애니매이션 적용
        uvc.modalTransitionStyle = UIModalTransitionStyle.flipHorizontal
        
        // 화면 전환
        self.present(uvc, animated: true)
    }
    
    
}

