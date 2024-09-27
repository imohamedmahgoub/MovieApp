//
//  UpcomingViewController.swift
//  MovieApp
//
//  Created by Mohamed Mahgoub on 27/09/2024.
//

import UIKit

class UpcomingViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        let nib = UINib(nibName: "NowPlayingTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "NowPlayingTableViewCell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.title = "Upcoming Movies"
    }
}

extension UpcomingViewController : UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NowPlayingTableViewCell", for: indexPath) as! NowPlayingTableViewCell
        cell.movieImage.image = UIImage(systemName: "person")
        cell.movieTitle.text = "Mahgoub"
        cell.movieDate.text = "00"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

