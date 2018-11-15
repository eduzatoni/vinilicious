//
//  PageViewController.swift
//  ViniciusApp
//
//  Created by Eduardo Curupana on 07/11/2018.
//  Copyright © 2018 Eduardo Curupana. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    var index = 0
    var tTime: Timer!

    lazy var subViewControllers: [UIViewController] = {
        return [
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Page1ViewController") as! Page1ViewController,
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Page2ViewController") as! Page2ViewController,
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Page3ViewController") as! Page3ViewController,
            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Page4ViewController") as! Page4ViewController
        ]
    }()
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let currentIndex: Int = subViewControllers.index(of: viewController) ?? 0
        if (currentIndex <= 0){
            return nil
        }
        return subViewControllers[currentIndex - 1]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let currentIndex: Int = subViewControllers.index(of: viewController) ?? 0
        if (currentIndex >= subViewControllers.count - 1){
            return nil
        }
        return subViewControllers[currentIndex + 1]
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return subViewControllers.count
    }
    
    
    
    @objc func changeSlide() {
        index = index + 1
        if index < self.subViewControllers.count {
            setViewControllers([subViewControllers[index]], direction: .forward, animated: true, completion: nil)
        }
        else {
            index = 0
            setViewControllers([subViewControllers[0]], direction: .forward, animated: true, completion: nil)
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        self.dataSource = self
        
        setViewControllers([subViewControllers[0]], direction: .forward, animated: true, completion: nil)
        
        tTime = Timer.scheduledTimer(timeInterval: 0.15, target: self, selector: #selector(changeSlide), userInfo: nil, repeats: true)

        
        // Do any additional setup after loading the view.
    }

}
