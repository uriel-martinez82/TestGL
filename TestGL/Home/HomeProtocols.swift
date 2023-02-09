import Foundation

protocol HomeRouterProtocol: AnyObject {

}

protocol HomePresenterProtocol: AnyObject {

}


protocol HomeInteractorProtocol: AnyObject {

  var presenter: HomePresenterProtocol?  { get set }
}


protocol HomeViewProtocol: AnyObject {

  var presenter: HomePresenterProtocol?  { get set }
}
