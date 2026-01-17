//
//  ColorsTablesVC.swift
//  RandomColors
//
//  Created by Moinak G  on 08/01/26.
//

import UIKit

class ColorsTablesVC: UIViewController {
    
    var colors: [UIColor] = []
    
    enum Colors {
        static let cell = "ColorCell"
    }
    
    enum Segues {
        static let toDetail = "ToColorsDetailVC"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
        

        // Do any additional setup after loading the view.
    }
    
    func addRandomColors() {
        for _ in 0..<50{
            colors.append(.random())
//            colors.append(createRandomColor())
        }
    }
    
//    func createRandomColor() -> UIColor {
//        let randomColor = UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1.0)
//        return randomColor
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailsVC
        destVC.color = sender as? UIColor
    }
    
//    @IBAction func tempButtonTapped(_ sender: UIButton) {
//        performSegue(withIdentifier: "ToColorsDetailVC", sender: nil)
//    }
    
}

extension ColorsTablesVC: UITableViewDelegate, UITableViewDataSource {
    
    // DataSource - Tells how many rows should be shown.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
//        return 50
    }
    
    // Delegate - Tells what to show in each row.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell")
//        let color = colors[indexPath.row]
//        cell?.backgroundColor = color
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Colors.cell) else {
            return UITableViewCell()
        }
        cell.backgroundColor = colors[indexPath.row]
        
        return cell
//        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: Segues.toDetail, sender: color)
    }
    
}
