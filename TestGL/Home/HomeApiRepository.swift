//
//  HomeApiRepository.swift
//  TestGL
//
//  Created by Uriel Martinez  on 08/02/2023.
//

import Foundation
import Alamofire


class HomeApiRepository: HomeRepositoryProtocol {
    func fetchList(completion: @escaping ([ListModelElement]?) -> Void) {
        let request = AF.request("http://private-f0eea-mobilegllatam.apiary-mock.com/list")
        request.responseDecodable(of: ListModel.self) { (response) in
            
          guard let listModel = response.value else {
              print("Error")
              completion(nil)
              return }
            let listsModel = listModel
            completion(listsModel)
//            print(listModel[0].title)
        }
    }
    
}
