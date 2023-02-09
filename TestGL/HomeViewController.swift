//
//  HomeViewController.swift
//  TestGL
//
//  Created by Uriel Martinez  on 08/02/2023.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = .red
        self.tableView.delegate = self
        self.tableView.dataSource = self
        tableView?.register(UINib(nibName: "HomeTableViewCell", bundle: Bundle(for: HomeTableViewCell.self)), forCellReuseIdentifier: "HomeTableViewCell")

    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as! HomeTableViewCell
        cell.descriptionLabel.text = "Descripcion en etiqueta"
        cell.homeTitleLabel.text = "Licuadora"        
        cell.selectionStyle = .none
        return cell
    }
    
    
}
