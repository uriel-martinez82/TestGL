import UIKit

class CorePresenter: CorePresenterProtocol {

    weak var view: CoreViewProtocol?
    var interactor: CoreInteractorProtocol?
    var router: CoreRouterProtocol?
    

}
