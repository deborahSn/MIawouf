//
//  FormViewController.swift
//  Miawouf
//
//  Created by Déborah Suon on 17/09/2021.
//

import UIKit

class FormViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        dogRaces.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dogRaces[row]
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    

    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        nameTextField.resignFirstResponder()
        phoneTextField.resignFirstResponder()
    }
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var phoneTextField: UITextField!
    
    @IBOutlet weak var racePickerView: UIPickerView!
    
    @IBOutlet weak var majoritySwitch: UISwitch!
    
    @IBOutlet weak var genderSegmentedControl: UISegmentedControl!
    
    
    @IBAction func validate() {
        createPetObject()
    }
    
    private func createPetObject(){
        let name = nameTextField.text
        let phone = phoneTextField.text
        let hasMajority = majoritySwitch.isOn
        let genderIndex = genderSegmentedControl.selectedSegmentIndex
       
        let raceIndex = racePickerView.selectedRow(inComponent: 0)
        let race = dogRaces[raceIndex]
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
