class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    sessionsController = SessionsController.alloc.init
    sessionsController.title = 'Login App'
    sessionsController.view.backgroundColor = UIColor.whiteColor

    navigationController = UINavigationController.alloc.initWithRootViewController(sessionsController)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = navigationController
    @window.makeKeyAndVisible

    true
  end
end
