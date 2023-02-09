import UIKit
import Kingfisher

class HomeView: UIViewController, HomeViewProtocol {

    @IBOutlet weak var tableView: UITableView!
    var presenter: HomePresenterProtocol?
    var list: ListModel?
    
	override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Lista de productos"
        self.presenter?.startFetchingList()
        self.view.backgroundColor = .white
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.separatorStyle = .none
        tableView?.register(UINib(nibName: "HomeTableViewCell", bundle: Bundle(for: HomeTableViewCell.self)), forCellReuseIdentifier: "HomeTableViewCell")
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 110

    }
    
    func getListModels(listModel: ListModel) {
        self.list = listModel
        print(list)
        self.tableView.reloadData()
    }

}

extension HomeView: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as! HomeTableViewCell
        let index = indexPath.row
        if let elementList = list?[index]{
            let item = elementList as! ListModelElement
            cell.setData(item: item)
        }
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let index = indexPath.row
        let elementList = list?[index]
        let vc = DetailViewController(nibName: "DetailViewController", bundle: nil)
        self.navigationController!.pushViewController(vc, animated: true)
        vc.item = elementList
    }
    
}
