//
//  ViewController.swift
//  RxHomework
//
//  Created by Admin on 14.10.2021.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

//    let button: UIButton = {
//        let button = UIButton()
//        button.setTitle("Create circle!", for: .normal)
//        button.backgroundColor = .systemYellow
//        button.layer.cornerRadius = 10
//        button.titleLabel?.textAlignment = .center
//        button.setTitleColor(.systemBlue, for: .normal)
//        button.titleLabel?.adjustsFontSizeToFitWidth = true
//        return button
//    }()
    let circleView = CircleView()
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //self.view.addSubview(button)
//        button.frame = CGRect(x: 0, y: 100, width: 100, height: 50)
//        button.center.x = self.view.center.x
//        self.view.addSubview(circleView)
        
        let tableV = UITableView()
        tableV.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        view.addSubview(tableV)
        tableV.frame = view.bounds
        
        
        
        let items = Observable.just(["1","2","3"])
        
        items
            .bind(to: tableV.rx.items(cellIdentifier: "Cell", cellType: UITableViewCell.self)){ (row, element, cell) in
//                let cell = tableV.dequeueReusableCell(withIdentifier: "cell")
                cell.textLabel?.text = "\(element) \(row)"
                //return cell
            }
            .disposed(by: disposeBag)
            
        
//        button.rx.tap
//            .debounce(.seconds(2), scheduler: MainScheduler.asyncInstance)
//            .subscribe { _ in
//                let newCircle = CircleView()
//                self.view.addSubview(newCircle)
//            }
//            .disposed(by: disposeBag)
//        //circleView.center = view.center

        
//        let a = Observable.of("℗")
//            .subscribe(onNext: { element in
//                print(element)
//            })
//            .disposed(by: disposeBag)
//
//
//      
        
        
        

    }


}

