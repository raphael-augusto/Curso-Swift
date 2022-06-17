//
//  SettingsViewController.swift
//  Pensamentos
//
//  Created by Raphael Augusto Gonzaga on 13/06/22.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var swAutorefresh: UISwitch!
    @IBOutlet weak var slTimeInterval: UISlider!
    @IBOutlet weak var lbTimeInterval: UILabel!
    @IBOutlet weak var scColorScheme: UISegmentedControl!
    
    let settings = Configuration.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(forName: NSNotification.Name(rawValue: "Refresh"), object: nil, queue: nil) { (notification) in
            
            self.formatView()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        formatView()
    }
    
    func formatView() {
        swAutorefresh.setOn(settings.autoRefresh, animated: false)
        slTimeInterval.setValue(Float(settings.timeInteval), animated: false)
        scColorScheme.selectedSegmentIndex = settings.colorScheme
        
        changeTimeIntervalLabel(with: settings.timeInteval)
    }
    
    func changeTimeIntervalLabel(with value: Double) {
        lbTimeInterval.text = "Mudar após \(Int(value)) segundos"
    }
    

    //Ação dos botões
    @IBAction func changeAutorefresh(_ sender: UISwitch) {
        settings.autoRefresh = sender.isOn
    }
    
    @IBAction func changeTimeInterval(_ sender: UISlider) {
        let value = Double(round(sender.value))
        changeTimeIntervalLabel(with: value)
        
        settings.timeInteval = value
    }
    
    @IBAction func changeColorScheme(_ sender: UISegmentedControl) {
        settings.colorScheme = sender.selectedSegmentIndex
    }
    
    

}
