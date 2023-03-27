
import UIKit

class ViewController: UIViewController{
    var photo = [UIImage(named: "1"),UIImage(named: "2"),UIImage(named: "3"),UIImage(named: "4"),UIImage(named: "5"),UIImage(named: "16"),UIImage(named: "17")]
    var photo2 = [UIImage(named: "6"),UIImage(named: "7"),UIImage(named: "8"),UIImage(named: "9"),UIImage(named: "10"),UIImage(named: "18"),UIImage(named: "19")]
    var photo3 = [UIImage(named: "11"),UIImage(named: "12"),UIImage(named: "13"),UIImage(named: "14"),UIImage(named: "15"),UIImage(named: "5")]
    
    @IBOutlet weak var cv1: UICollectionView!
    
    @IBOutlet weak var cv2: UICollectionView!
    @IBOutlet weak var cv3: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
}

extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.cv1{
            return photo.count
        }
        else if collectionView == self.cv2{
            return photo2.count
        }
        else{
            return photo3.count
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.cv1{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
            cell.img.image = photo[indexPath.row]
            
            return cell
        }
        else if collectionView == self.cv2{
            let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! myCollectionViewCell2
            
            cell2.img2.image = photo2[indexPath.row]
            return cell2
            
        }
        else{
            let cell3 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! myCollectionViewCell3
            cell3.img3.image = photo3[indexPath.row]
            
            return cell3
        }
        
        
    }
    
}


extension ViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        if collectionView == self.cv1{
            return CGSize(width: 150, height: 200)
        } else if collectionView == self.cv2{
            return CGSize(width: 150, height: 200)
        }else{
            return CGSize(width: 150, height: 200)
        }
        
    }
}
