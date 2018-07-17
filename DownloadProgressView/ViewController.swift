//
//  ViewController.swift
//  DownloadProgressView
//
//  Created by zhangzhenwei on 2018/7/17.
//  Copyright © 2018年 zhangzhenwei. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(downLoadProgressView)
        self.view.addSubview(beginBtn)
    }
    
    lazy var downLoadProgressView: DownLoadProgressView = {
        var downLoadProgressView = DownLoadProgressView.init(frame: CGRect.init(x: 100, y: 100, width: 40, height: 40))
        return downLoadProgressView
    }()
    
    fileprivate lazy var beginBtn: UIButton = {
        var beginBtn = UIButton(type: .custom)
        beginBtn.frame = CGRect.init(x: 100, y: 200, width: 100, height: 40)
        beginBtn.setTitle("begin", for: .normal)
        beginBtn.setTitleColor(UIColor.white, for: .normal)
        beginBtn.backgroundColor = UIColor.green
        beginBtn.addTarget(self, action: #selector(beginBtnClickAction), for: .touchUpInside)
        return beginBtn
    }()
    
    @objc func beginBtnClickAction()  {
        downLoadProgressView.setProgress(0.8, animated: true)
    }
    
}

