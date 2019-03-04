import UIKit
import EANBarcodeGenerator

class ViewController: UIViewController {

    @IBOutlet weak var barcodeTextField: UITextField!
    @IBOutlet weak var barcodeImageView: UIImageView!
    @IBOutlet weak var barcodeQuietSpaceSlider: UISlider!
    @IBOutlet weak var barcodeQuietSapceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        barcodeImageView.contentMode = .center        
        barcodeImageView.layer.borderColor = UIColor.blue.cgColor
        barcodeImageView.layer.borderWidth = 1.0
    }

    @IBAction func quietSpaceChanged(_ sender: UISlider) {
        barcodeQuietSapceLabel.text = String(Int(sender.value))
    }
    
    @IBAction func onGenerate(_ sender: Any) {
        barcodeImageView.image = nil
        
        guard let filter = CIFilter(name: "CIEANBarcodeGenerator"), let barcodeString = barcodeTextField.text else {
            return
        }
        
        filter.setValue(barcodeString, forKey: "inputMessage")
        guard let image = filter.outputImage else {
            return
        }
        
        let quietSpace = CGFloat(Int(barcodeQuietSpaceSlider.value))
        let scaleX = (barcodeImageView.frame.width - quietSpace) / image.extent.width
        let scaleY = (barcodeImageView.frame.height - quietSpace) / image.extent.height
        barcodeImageView.image = UIImage(ciImage: image.transformed(by: CGAffineTransform(scaleX: scaleX, y: scaleY)))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()        
    }

}

