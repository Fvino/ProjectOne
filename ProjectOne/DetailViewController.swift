//
//  DetailViewController.swift
//  ProjectOne
//
//  Created by Valeriy Fomin on 28/4/22.
//

import UIKit

class DetailViewController: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var imageViewOutlet: UIImageView!

    //MARK: - Properties
    var selectedImage: String?

    //MARK: - ViewController
    override func viewDidLoad() {
        super.viewDidLoad()

        if let imageToLoad = selectedImage {
            imageViewOutlet.image = UIImage(named: imageToLoad)
        }
    }
}
