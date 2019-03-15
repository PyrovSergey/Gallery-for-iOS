//
//  CategoryTableViewController.swift
//  Gallery
//
//  Created by Sergey on 13/03/2019.
//  Copyright © 2019 Sergey. All rights reserved.
//

import UIKit

class CategoryTableViewController: UITableViewController {
    
    private let categoryArray = DataStorage.getInstance().categoryArray
    //private let connection =
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareChangeConnectionListener()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        checkCurrentConnection()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return categoryArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath)
        cell.textLabel?.text = categoryArray[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        NetworkManager.isReachable { _ in
            self.performSegue(withIdentifier: "goToSelectCategory", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! CategoryCollectionViewController
        if let indexPath = tableView.indexPathForSelectedRow {
            destinationVC.nameOfCategory = categoryArray[indexPath.row]
        }
    }
    
    private func prepareChangeConnectionListener() {
        NetworkManager.getInstance().reachability.whenUnreachable = {
            _ in
            self.showLostConnectionMessage()
        }
    }
    
    private func checkCurrentConnection() {
        NetworkManager.isUnreachable { _ in
            self.showLostConnectionMessage()
        }
    }
    
    private func showLostConnectionMessage() {
        let dialogMessage = UIAlertController(title: "Lost internet connection", message: "Check connection settings", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default) { action in
            self.checkCurrentConnection()
        }
        dialogMessage.addAction(okButton)
        self.present(dialogMessage, animated: true, completion: nil)
    }

}
