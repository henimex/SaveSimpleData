import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtNote: UITextField!
    @IBOutlet weak var txtTime: UITextField!
    @IBOutlet weak var lblNote: UILabel!
    @IBOutlet weak var lblTime: UILabel!
    
    @IBAction func btnSaveNote(_ sender: Any) {
        lblNote.text = txtNote.text
        lblTime.text = txtTime.text
    }
    
    @IBAction func btnDeleteNote(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func saveData(data:String){
        
    }
}

