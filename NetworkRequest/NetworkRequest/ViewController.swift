//
//  ViewController.swift
//  NetworkRequest
//
//  Created by 贾发 on 2021/4/18.
//

import UIKit

protocol URLSessionProtocol {
    func dataTask(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask
}

extension URLSession: URLSessionProtocol {
    
}

class ViewController: UIViewController {
    @IBOutlet private(set) var button: UIButton!
    
    private var dataTask: URLSessionDataTask?
    
    var session: URLSessionProtocol = URLSession.shared

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction private func buttonTapped() {
        searchForBook(terms: "out from boneville")
        searchForBook(terms: "the great cow race")
    }
    
    private func searchForBook(terms: String) {
        guard let encodeTerms = terms.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed), let url = URL(string: "https://itunes.apple.com/search?" + "media=ebook&term=\(encodeTerms)") else {
            return
        }
        
        let request = URLRequest(url: url)
        dataTask = session.dataTask(with: request, completionHandler: { [unowned self] (data, response, error) in
            let decoded = String(data: data ?? Data(), encoding: .utf8)
            print("response: \(String(describing: response))")
            print("data: \(String(describing: decoded))")
            print("error: \(String(describing: error))")
            
            DispatchQueue.main.async { [unowned self] in
                self.dataTask = nil
                self.button.isEnabled = true
            }
        })
        
        button.isEnabled = false
        dataTask?.resume()
    }
}

