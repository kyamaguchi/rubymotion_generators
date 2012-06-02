class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
      self.window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
      # Override point for customization after application launch.
      nibs = nil
      if UIDevice.currentDevice.userInterfaceIdiom == UIUserInterfaceIdiomPhone
        nibs = ["FirstViewController_iPhone", "SecondViewController_iPhone"]
      else
        nibs = ["FirstViewController_iPad", "SecondViewController_iPad"]
      end
      viewController1 = FirstViewController.alloc.initWithNibName(nibs[0], bundle:nil)
      viewController2 = SecondViewController.alloc.initWithNibName(nibs[1], bundle:nil)
      self.tabBarController = UITabBarController.alloc.init
      self.tabBarController.viewControllers = [viewController1, viewController2]
      self.window.rootViewController = self.tabBarController
      self.window.makeKeyAndVisible
      true
  end

  def applicationWillResignActive(application)
    # Sent when the application is about to move from active to inactive state.
    # This can occur for certain types of temporary interruptions (such as an
    # incoming phone call or SMS message) or when the user quits the application
    # and it begins the transition to the background state.
    # Use this method to pause ongoing tasks, disable timers, and throttle down
    # OpenGL ES frame rates. Games should use this method to pause the game.
  end

  def applicationDidEnterBackground(application)
    # Use this method to release shared resources, save user data, invalidate
    # timers, and store enough application state information to restore your
    # application to its current state in case it is terminated later. 
    # If your application supports background execution, this method is called
    # instead of applicationWillTerminate: when the user quits.
  end

  def applicationWillEnterForeground(application)
    # Called as part of the transition from the background to the inactive
    # state; here you can undo many of the changes made on entering the
    # background.
  end

  def applicationDidBecomeActive(application)
    # Restart any tasks that were paused (or not yet started) while the
    # application was inactive. If the application was previously in the
    # background, optionally refresh the user interface.
  end

  def applicationWillTerminate(application)
    # Called when the application is about to terminate. Save data if
    # appropriate. See also applicationDidEnterBackground:.
  end

=begin
  # Optional UITabBarControllerDelegate method.
  def tabBarController(tabBarController, didSelectViewController:viewController)
  end
=end

=begin
  # Optional UITabBarControllerDelegate method.
  def tabBarController(tabBarController, didEndCustomizingViewControllers:viewControllers, changed:changed)
  end
=end
end

