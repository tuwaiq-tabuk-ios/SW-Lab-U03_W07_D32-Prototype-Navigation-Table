# SW-Lab-U03_W07_D32-Prototype-Navigation-Table
Prototype App that shows how a user can navigate from a table view controller to a detail view controller when the he/she taps on any of the cells of a table view

## Topics
1. Use of _**Mark comments**_  to better structure our code dividing it into recognizable groups
   - `MARK:` 
   - _**Line separators**_
   - Use of _**todo**_ and _**fixme**_ comments
     - `TODO:`
     - `FIXME:`
2. Create a _**table view controller**_ in the Storyboard
3. Insert data into _**table views**_
   - Numbers of rows in section
     - `UITableViewDatasource tableView(_ tableView: UITableView,numberOfRowsInSection section: Int) -> Int`
   - Fill the cells
     - `UITableView`
        - `dequeueReusableCell(withIdentifier identifier: String,for indexPath: IndexPath) -> UITableViewCell`
4. Navigation 
   - React to users taping a cell in a table view
     - `UITableViewDelegate`
       - `tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)`
   - Transitioning between table view controllers and detail view controllers through Segue arrows.
   - Send data from one Table View Controller to another View Controller
   - Show data in a detail view controller through a transition


## Description
1. Build a prototype App that has a _**table view controller**_ in the main screen.
2. Fill the _**cells**_ of the _**table view**_ with the name of an `Item` type stored in an array.
3. When the user taps any _**cell** there is a navigation to a _**detail view controller**_ showing the description of the corresponding `Item` type.



https://user-images.githubusercontent.com/91871792/141926691-cdf0115c-eb56-4737-903c-c0f113ce541e.mp4


## Deadline 
Tuesday 16 November 9:15 am
