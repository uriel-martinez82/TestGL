import UIKit

class HomePresenter: HomePresenterProtocol {

    weak var view: HomeViewProtocol?
    var interactor: HomeInteractorProtocol?
    var router: HomeRouterProtocol?
    var listsModel: ListModel?
    
    func startFetchingList() {
         interactor?.fetchList()
     }
    
    func successRequest(list: ListModel) {
        self.listsModel = list
        view?.getListModels(listModel: listsModel!)
    }
}

