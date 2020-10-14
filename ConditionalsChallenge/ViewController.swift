//
//  ViewController.swift
//  ConditionalsChallenge
//
//  Created by Bob Marley
//  Copyright © 2020 MobileMakersEdu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var myTextView: UITextView!
    @IBOutlet weak var mySegmentedControl: UISegmentedControl!
    
    var firstChoiceCost = 0
    var secondChoiceCost = 0
    var thirdChoiceCost = 0
    var fourthChoiceCost = 0
    
    var totalMoney = Int()
    var stringToReturn = ""
    
    var clothingItemArray = [ClothingItems]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        clothingItemArray.append(ClothingItems(Description: "Jacket", Price: 80))
        clothingItemArray.append(ClothingItems(Description: "Jeans", Price: 60))
        clothingItemArray.append(ClothingItems(Description: "Shirt", Price: 40))
        clothingItemArray.append(ClothingItems(Description: "Hat", Price: 20))
        
        myTableView.isEditing = true
    }
    
    func determineOutputMVP() -> String
    {
        setInfo()
        // MARK: - MVP
        
        
        
        return stringToReturn
    }
    
    func determineOutput1() -> String
    {
        setInfo()
        // MARK: - Stretch #1
        
        
        
        return stringToReturn
    }
    
    func determineOutput2() -> String
    {
        setInfo()
        // MARK: - Stretch #2
        
        
        
        return stringToReturn
    }
    
    func determineOutput3() -> String
    {
        setInfo()
        // MARK: - Stretch #3
        
        
        
        return stringToReturn
    }
    
    func determineOutput4() -> String
    {
        setInfo()
        // MARK: - Stretch #4
        
        
        
        return stringToReturn
    }
    
    func determineOutput5() -> String
    {
        setInfo()
        // MARK: - Stretch #5
        
        
        
        return stringToReturn
    }
    
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool
    {
        return true
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath)
    {
        let selectedItem = clothingItemArray[sourceIndexPath.row]
        clothingItemArray.remove(at: sourceIndexPath.row)
        clothingItemArray.insert(selectedItem, at: destinationIndexPath.row)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        let selectedClothingItem = clothingItemArray[indexPath.row]
        cell.textLabel!.text = selectedClothingItem.description + " $\(selectedClothingItem.price)"
        return cell
    }
    
    @IBAction func whenRefreshPressed(_ sender: UIBarButtonItem)
    {
        setInfo()
        onSegmentChosenPressed()
    }
    
    func setInfo()
    {
        totalMoney = (Int)(arc4random_uniform(10)*20 + 20)
        stringToReturn = ""
        navigationItem.title = "You have $\(totalMoney)"
        firstChoiceCost = clothingItemArray[0].price
        secondChoiceCost = clothingItemArray[1].price
        thirdChoiceCost = clothingItemArray[2].price
        fourthChoiceCost = clothingItemArray[3].price
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return clothingItemArray.count
    }
    
    func onSegmentChosenPressed()
    {
        switch mySegmentedControl.selectedSegmentIndex
        {
        case 0:
            myTextView.text = determineOutputMVP()
        case 1:
            myTextView.text = determineOutput1()
        case 2:
            myTextView.text = determineOutput2()
        case 3:
            myTextView.text = determineOutput3()
        case 4:
            myTextView.text = determineOutput4()
        case 5:
            myTextView.text = determineOutput5()
        default:
            print("Error")
        }
    }
}

