import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtNote: UITextField!
    @IBOutlet weak var txtTime: UITextField!
    @IBOutlet weak var lblNote: UILabel!
    @IBOutlet weak var lblTime: UILabel!
    
    @IBAction func btnSaveNote(_ sender: Any) {
        let note =  "Note: \(txtNote.text!)"
        let time = "Time: \(txtTime.text!)"
        
        lblTime.text = time
        lblNote.text = note
        
        saveData(data: note, time: time)
        clearEnteranceAreas()
    }
    
    @IBAction func btnDeleteNote(_ sender: Any) {
        deleteData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
    }
    
    func saveData(data:String, time: String){
        UserDefaults.standard.set(data, forKey: "note")
        UserDefaults.standard.set(time, forKey: "time")
    }
    
    func getData(){
        let savedNote = UserDefaults.standard.object(forKey: "note")
        let savedTime = UserDefaults.standard.object(forKey: "time")
        
        if let savedNoteString = savedNote as? String{
            lblNote.text = savedNoteString
        } else {
            lblNote.text = "Note: No Saved Data"
        }
        
        if let savedTimeString = savedTime as? String {
            lblTime.text = savedTimeString
        } else {
            lblTime.text = "Time: No Saved Time"
        }
    }
    
    func deleteData(){
        UserDefaults.standard.removeObject(forKey: "note")
        UserDefaults.standard.removeObject(forKey: "time")
        
        clearEnteranceAreas()
        clearLabels()
    }
    
    func clearEnteranceAreas(){
        txtNote.text = ""
        txtTime.text = ""
    }
    
    func clearLabels(){
        lblNote.text = "Note:"
        lblTime.text = "Time:"
    }
}
