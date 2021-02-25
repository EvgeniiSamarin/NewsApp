//
//  ListModuleViewController.swift
//  NewsApp
//
//  Created by Евгений Самарин on 11.02.2021.
//  
//

import UIKit
import PinLayout

final class ListModuleViewController: UIViewController {
	private let output: ListModuleViewOutput
    private let tableView = UITableView()
    
    init(output: ListModuleViewOutput) {
        self.output = output
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .yellow
        view.addSubview(self.tableView)
        
        setupTableView()
        
        self.view = view
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.tableView.pin.all()
    }
    
	override func viewDidLoad() {
		super.viewDidLoad()
	}
}

extension ListModuleViewController: ListModuleViewInput {
}

extension ListModuleViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.backgroundColor = .green
        
        return cell
    }
    
    
}

extension ListModuleViewController: UITableViewDelegate {
    
}

private extension ListModuleViewController {
    func setupTableView() {
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
}
