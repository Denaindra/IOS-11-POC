
import UIKit

struct cellData {
    var opened = Bool()
    var title = String()
    var sectionData = [String]()
}


class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    private var tableViewData = [cellData]()

    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewData = [cellData(opened: false, title: "Title 1 ", sectionData: ["Cell 1","Cell 2","Cell 3"])
            ,cellData(opened: false, title: "Title 2 ", sectionData: ["Cell 1","Cell 2","Cell 3"])
            ,cellData(opened: false, title: "Title 3 ", sectionData: ["Cell 1","Cell 2","Cell 3"])
            ,cellData(opened: false, title: "Title 4 ", sectionData: ["Cell 1","Cell 2","Cell 3"])
            ,cellData(opened: false, title: "Title 5 ", sectionData: ["Cell 1","Cell 2","Cell 3"])]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return tableViewData.count
    }

  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableViewData[section].opened == true
        {
            return tableViewData[section].sectionData.count
        }
        else{
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0
        {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "test") else {
                return UITableViewCell()
            }
//            var cell = UITableViewCell()
            cell.textLabel?.text=tableViewData[indexPath.section].title
            return cell;
        }
        else{
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "test") else {
                return UITableViewCell()
            }
            
//           var cell = UITableViewCell()
            cell.textLabel?.text=tableViewData[indexPath.section].sectionData[indexPath.row - 1]
            return cell;
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableViewData[indexPath.section].opened == true {
            tableViewData[indexPath.section].opened = false
            let section = IndexSet.init(integer: indexPath.section)
            tableView.reloadSections(section, with: .none)
        }
        else{
            tableViewData[indexPath.section].opened = true
            let section = IndexSet.init(integer: indexPath.section)
            tableView.reloadSections(section, with: .none)
        }
    }
 
    
}



















