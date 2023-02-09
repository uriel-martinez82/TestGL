import Foundation

protocol HomeRouterProtocol: AnyObject {
    
}

protocol HomePresenterProtocol: AnyObject {
    var listsModel: ListModel? { get set }
    func startFetchingList()
    func successRequest(list: ListModel)
    
}


protocol HomeInteractorProtocol: AnyObject {
    
    var presenter: HomePresenterProtocol?  { get set }
    func fetchList()
}


protocol HomeViewProtocol: AnyObject {
    
    var presenter: HomePresenterProtocol?  { get set }
    func getListModels(listModel: ListModel)

}

protocol HomeRepositoryProtocol {
    
    func fetchList(completion: @escaping ([ListModelElement]?) -> Void)
    
}
