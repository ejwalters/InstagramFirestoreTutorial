//
//  ProfileCell.swift
//  InstagramFirestoreTutorial
//
//  Created by eriwalte on 5/8/21.
//

import UIKit

class ProfileCell: UICollectionViewCell {
    
    
    // MARK: - Properties
    
    var viewModel: PostViewModel? {
        didSet{ configure() }
    }
    
    private let postImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "glbc_xmas_ale")
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        return iv
    }()
    
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemPink
        
        addSubview(postImageView)
        postImageView.fillSuperview()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        
        guard let viewModel = viewModel else { return }
        
        postImageView.sd_setImage(with: viewModel.imageUrl)
    }
    
    
    
}
