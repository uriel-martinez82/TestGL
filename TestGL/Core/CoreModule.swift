import UIKit

class CoreModule {

    static func build() -> UIViewController {        
        let view = CoreView()
        let interactor = CoreInteractor()
        let router = CoreRouter()
        let presenter = CorePresenter()

        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        
        view.presenter = presenter
        interactor.presenter = presenter
        router.viewController = view
        
        return view
    }    
}
