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

        title = selectedImage
        navigationItem.largeTitleDisplayMode = .never

        if let imageToLoad = selectedImage {
            imageViewOutlet.image = UIImage(named: imageToLoad)
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
}
