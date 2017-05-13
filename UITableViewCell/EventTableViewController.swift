//
//  EventTableViewController.swift
//  UITableViewCell
//
//  Created by Cntt22 on 4/22/17.
//  Copyright © 2017 Cntt22. All rights reserved.
//

import UIKit

class EventTableViewController: UITableViewController, UISearchResultsUpdating {

    // Data Source
    //
    var studentList: [Student] = {
        return StudentList.getStudentList()
    }()
    var filteredStudents = [Student]()
    let searchController = UISearchController(searchResultsController: nil)
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.leftBarButtonItem = self.editButtonItem
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        searchController.searchResultsUpdater = self
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.dimsBackgroundDuringPresentation = false
        searchController.searchBar.sizeToFit()
        self.tableView.tableHeaderView = searchController.searchBar
        definesPresentationContext = true
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if searchController.isActive && searchController.searchBar.text != "" {
            return filteredStudents.count
        }
        return studentList.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EventCell", for: indexPath) as! EventStudentTableViewCell
        let student: Student
        if searchController.isActive && searchController.searchBar.text != "" {
            student = filteredStudents[indexPath.row]
        } else {
            student = studentList[indexPath.row]
        }
        // Configure the cell...
        cell.configureStudentViewCell(student: student)
        return cell
    }
    //
    func filterContentForSearchText(searchText: String) {
        filteredStudents = studentList.filter { student in
            return  student.name.lowercased().contains(searchText.lowercased())
        }
        
        tableView.reloadData()
    }
    
    //
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchText: searchController.searchBar.text!)
    }
    
    //
    func foundInStudentList(student: Student) -> Int{
        for i in 0...studentList.count {
            if student.name == studentList[i].name && student.university == studentList[i].university {
                return i
            }
        }
        return -1
    }
    
    //
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            let indexPath = tableView.indexPathForSelectedRow
            var student: Student
            
            if searchController.isActive && searchController.searchBar.text != "" {
                student = filteredStudents[(indexPath?.row)!]
            } else {
                student = studentList[(indexPath?.row)!]
            }
            
            let editVC = segue.destination as! EventDetailViewController
            editVC.student = student
            editVC.navigationItem.leftItemsSupplementBackButton = true
        }
        
        if segue.identifier == "AddNewStudent" {
            let addVC = segue.destination as! EventAddViewController
            addVC.studentList = studentList
            tableView.reloadData()
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        if temp.check {
            let student: Student = temp.student
            studentList.append(student)
            tableView.reloadData()
            temp.check = false
        }
        super.viewWillAppear(true)
    }
    
    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        if searchController.isActive && searchController.searchBar.text != "" {
            return false
        } else {
            return true
        }
    }
    
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    
    // Proccessing while user remove an event
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            studentList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    
    //Sỏrt
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to toIndexPath: IndexPath) {

    }

}
