//
//  ViewController.swift
//  MiniApp-HalfModal
//
//  Created by 近藤米功 on 2022/04/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let halfModalVC = segue.destination
        if let sheet = halfModalVC.sheetPresentationController {
            sheet.detents = [.medium(), .large()]
            // モーダル出現後も親ビュー操作可能にする
            sheet.largestUndimmedDetentIdentifier = .medium
            // 角丸の半径を変更する
            sheet.preferredCornerRadius = 40.0
            // グラバー(上についてる横棒）表示する
            sheet.prefersGrabberVisible = true
        }

    }

    @IBAction func tappedNextButton(_ sender: Any) {
        performSegue(withIdentifier: "HalfModalSegue", sender: nil)
    }


}

