import Foundation

protocol CoreRouterProtocol: AnyObject {

}

protocol CorePresenterProtocol: AnyObject {

}


protocol CoreInteractorProtocol: AnyObject {

  var presenter: CorePresenterProtocol?  { get set }
}


protocol CoreViewProtocol: AnyObject {

  var presenter: CorePresenterProtocol?  { get set }
}
