import UIKit

class HomeInteractor: HomeInteractorProtocol {
    
    weak var presenter: HomePresenterProtocol?
    let repository: HomeRepositoryProtocol
    
    init(repository: HomeRepositoryProtocol) {
        self.repository = repository
    }
    
    func fetchList() {
        repository.fetchList(){ list in
            self.presenter?.successRequest(list: list!)
        }
    }
    
}
