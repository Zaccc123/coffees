//
//  ViewController.swift
//  coffee
//
//  Created by Zac on 11/10/16.
//  Copyright © 2016 zeta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let coffeeService = CoffeeService()
    var coffees = [Coffee]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 140

        getCoffeeData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func getCoffeeData() {
        coffeeService.getCoffeeData() { coffees in
            self.coffees = coffees
            self.tableView.reloadData()
        }
    }
}

extension ViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Do what you need after cell is selected
    }
}

extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return coffees.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CoffeeTableViewCell") as! CoffeeTableViewCell
        let coffee = coffees[indexPath.row]
        cell.configure(coffee: coffee)

        return cell
    }
}
