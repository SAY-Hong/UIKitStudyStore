//
//  AttractionTableViewController.swift
//  TableStoryDemo
//
//  Created by 홍세희 on 2023/11/16.
//

import UIKit

class AttractionTableViewController: UITableViewController {
    
    //테이블 목록
    var items = ["Kim", "Lee", "Hong"]
    var attractionImages = [String]()
    var attractionNames = [String]()
    var webAddresses = [String]()
    
    @IBOutlet var tbListView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        
        //편집 버튼 활성화하기
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        initialize()
    }

    //값이 오드될 때 일부 데이터로 배열을 초기화
    func initialize() {
        //데이터 넣기
        attractionNames = ["Buckingham Palace",
                           "The Eiffel Tower",
                           "The Grand Canyon",
                           "Windsor Castle",
                           "Empire State Building"]
        
        webAddresses = ["https://en.wikipedia.org/wiki/Buckingham_Palace",
                        "https://en.wikipedia.org/wiki/Eiffel_Tower",
                        "https://en.wikipedia.org/wiki/Grand_Canyon",
                        "https://en.wikipedia.org/wiki/Windsor_Castle",
                        "https://en.wikipedia.org/wiki/Empire_State_Building"]
        
        attractionImages = ["buckingham_palace.jpg",
                            "eiffel_tower.jpg",
                            "grand_canyon.jpg",
                            "windsor_castle.jpg",
                            "empire_state_building.jpg"]
        
        //테이블 뷰의 예상 행 높이 설정
        //테이블 뷰가 탐색을 추가할 깨 뷰 높이가 축소되는 것을 방지하고, 테이블 랜더링 성능도 향상
        self.tableView.estimatedRowHeight = 50
    }
    //뷰가 보일 때마다 리스트의 데이터를 다시 불러옴
    override func viewWillAppear(_ animated: Bool) {
        tbListView.reloadData()
    }
    // MARK: - Table view data source

    //테이블 안에 섹션이 1개
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    /*같은 이름의 다른 매개변수: 오버로드*/
    //섹션별 행의 개수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return attractionNames.count
    }
    
    //items값을 셀에 추가
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //스토리보드 화면에서 테이블 뷰 셀 'Table View Cell'의 Identifi의 이름을 넣기.
        let cell = tableView.dequeueReusableCell(withIdentifier: "AttractionTableCell", for: indexPath) as! AttractionTableViewCell

        let row = indexPath.row
        
        //추가된 데이터 소스를 목록에 출력
        cell.attractionLabel.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.headline)
        cell.attractionLabel.text = attractionNames[row] //.row가 순서!
        cell.attractionImage.image = UIImage(named: attractionImages[row])

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    //삭제 기능만 구현하기! +검색기능까지
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let row = indexPath.row
            
            self.attractionNames.remove(at: row)
            self.attractionImages.remove(at: row)
            self.webAddresses.remove(at: row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    
    //"Delete"를 "삭제"로 변경
    override func tableView(_ tableView: UITableView, titleForDeleteConfirmationButtonForRowAt indexPath: IndexPath) -> String? {
        return "삭제"
    }
    
    
    //목록 순서 바꾸기
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        //이동할 아이템 위치를 기록
        var row = fromIndexPath.row
        
        //이동할 아이템을 삭제
        let attractionName = self.attractionNames.remove(at: row)
        let attractionImage = self.attractionImages.remove(at: row)
        let webAddress = self.webAddresses.remove(at: row)
        
        //삭제한 아이템을 이동할 위치로 삽입
        row = to.row
        self.attractionNames.insert(attractionName, at: row)
        self.attractionImages.insert(attractionImage, at: row)
        self.webAddresses.insert(webAddress, at: row)
    }
    

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        //어떤 스토리보드한테 정보를 전달하는가? -> showAttractionDetail일때 뭐를 주겠다. 라는 것!
        if segue.identifier == "showAttractionDetail" {
            let detailView = segue.destination as! AttractionDetailViewController
            
            //테이블뷰 셀 중에서 클릭한 셀의 위치 찾기 -> indexPathForSelectedRow 사용하기.
            let row = self.tableView.indexPathForSelectedRow!.row
            detailView.webSite = webAddresses[row]
        }
        
    }
    

}
