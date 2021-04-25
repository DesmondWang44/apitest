//
//  ApiTestViewController.swift
//  TestApi
//
//  Created by WANG YAO-KUAN on 2021/4/25.
//

import UIKit

class ApiTestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func BtnApiTest(_ sender: UIButton) {
        let url = URL(string: "https://kfl.azurewebsites.net/api/MyAPI")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        // prepare json data
        let json = APIFinalOrderSet(WorkID: "fffff", MemberID: "123", OrderItemList: "1", OrderSpcList: "123", OrderPriceList: "1", OrderQTY: "1")

        let encoder = JSONEncoder()
        do{
            let data = try encoder.encode(json)
            request.httpBody = data
        } catch {
            
        }
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            if let error = error {
                print("Error took place \(error)")
                return
            } else {
                if let data = data, let getResult = String(data: data, encoding: .utf8) {
                    DispatchQueue.main.async {
                        print("api return is     \(getResult)")
                        //回傳的明明是String "Error_WK"  為什麼還跑進去了 else 裡？？？
                        if getResult == "Error_WK" {
                            print(" 是  回傳值是Error_WK  回傳值是\(getResult)")
                        } else {
                            print(" 否  回傳值不是Error_WK 回傳值是\(getResult)   回傳的明明是Error_WK 為什麼還進入這裡？？？？")
                        }
                    }
                }
            }
        }
        task.resume()
    }
   
}
