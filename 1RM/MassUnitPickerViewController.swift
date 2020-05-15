/// Copyright © 2020 Oliver Lau <oliver@ersatzworld.net>

import Foundation
import UIKit

class MassUnitPickerViewController: UIViewController {

    @IBOutlet weak var massUnitPicker: UIPickerView!

    var massUnit: String = DefaultMassUnit {
        didSet {
            UserDefaults.standard.set(massUnit, forKey: MassUnitKey)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        massUnitPicker.delegate = self
        massUnitPicker.dataSource = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let massUnit = UserDefaults.standard.string(forKey: MassUnitKey) ?? DefaultMassUnit
        guard let row = WeightUnits.firstIndex(of: massUnit) else { return }
        massUnitPicker.selectRow(row, inComponent: 0, animated: true)
    }
}


extension MassUnitPickerViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return WeightUnits.count
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        massUnit = WeightUnits[row]
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(WeightUnits[row])"
    }
}


extension MassUnitPickerViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
}
