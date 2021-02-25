//
//  AppCoordinator.swift
//  NewsApp
//
//  Created by Евгений Самарин on 19.02.2021.
//

import UIKit

 class AppCoordinator {

     private let window: UIWindow
     private lazy var tabBarController = UITabBarController()
     private lazy var navigationControllers = AppCoordinator.makeNavigationControllers()

     init(window: UIWindow) {
         self.window = window
         self.setupAppearance()
     }

     func start() {
         self.setupFeed()
         let navigationControllers = NavControllerType.allCases.compactMap {
             self.navigationControllers[$0]
         }
         self.tabBarController.setViewControllers(navigationControllers, animated: true)
         self.window.rootViewController = self.tabBarController
         self.window.makeKeyAndVisible()
     }
 }

 private extension AppCoordinator {
    //MARK:- настройка viewcontroller для разных табов
     func setupFeed() {
         guard let navController = self.navigationControllers[.feed] else {
             fatalError("can't find navController")
         }
         let context = FeedContext(moduleOutput: nil)
         let container = FeedContainer.assemble(with: context)
         navController.setViewControllers([container.viewController], animated: false)
         container.viewController.navigationItem.title = NavControllerType.feed.title
     }


     func setupAppearance() {
         UINavigationBar.appearance().barTintColor = .white
         UINavigationBar.appearance().tintColor = .black
         UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
         UINavigationBar.appearance().isTranslucent = false
         UINavigationBar.appearance().shadowImage = UIImage()

         UITabBar.appearance().barTintColor = .white
        //MARK:- добавить цвет к иконкам бара
         //UITabBar.appearance().tintColor = Styles.Color.appGreen
     }

     static func makeNavigationControllers() -> [NavControllerType: UINavigationController] {
         var result: [NavControllerType: UINavigationController] = [:]
         NavControllerType.allCases.forEach { navControllerKey in
             let navigationController = UINavigationController()
             let tabBarItem = UITabBarItem(title: navControllerKey.title,
                                           image: navControllerKey.image,
                                           tag: navControllerKey.rawValue)
             navigationController.tabBarItem = tabBarItem
            // MARK: - Не работает...
             navigationController.navigationBar.prefersLargeTitles = true
             navigationController.view.backgroundColor = .white // вот и решение...
             result[navControllerKey] = navigationController
         }
         return result
     }
 }

 fileprivate enum NavControllerType: Int, CaseIterable {
     case feed, prize, video, thumbsUp, podcasts

     var title: String {
         switch self {
         case .feed:
             return Localization.feed
         case .prize:
             return Localization.prize
         case .video:
             return Localization.video
         case .thumbsUp:
             return Localization.thumbsUp
         case .podcasts:
             return Localization.podcasts
         }
     }

     var image: UIImage? {
         switch self {
         case .feed:
             return UIImage(named: "feed")
         case .prize:
             return UIImage(named: "feed")
         case .video:
             return UIImage(named: "feed")
         case .thumbsUp:
             return UIImage(named: "feed")
         case .podcasts:
             return UIImage(named: "feed")
         }
     }
 }
