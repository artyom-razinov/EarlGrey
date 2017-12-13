Pod::Spec.new do |s|
  s.name = 'EarlGrey'
  s.module_name = 'EarlGrey'
  s.version = '1.12.1'
  s.summary = 'EarlGrey'
  s.homepage = 'https://github.com/artyom-razinov/EarlGrey'
  s.license = 'Apache 2.0, CC-BY 4.0'
  s.author = { 'Google Inc.' => 'http://www.google.com' }
  s.source = { :git => 'ssh://git@github.com/EarlGrey.git', :tag => "#{s.version}" }
  s.platform = :ios, '8.0'
  s.ios.deployment_target = "8.0"
  s.requires_arc = true
  s.source_files = 'EarlGrey/**/*'
  
  s.frameworks = 'CoreData', 'CoreFoundation', 'CoreGraphics', 'Foundation', 'IOKit', 'QuartzCore', 'UIKit', 'XCTest'
  
  s.xcconfig = {
    'ENABLE_BITCODE' => 'NO',
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "$(PLATFORM_DIR)/Developer/Library/Frameworks"',
    'HEADER_SEARCH_PATHS' => '$(inherited) "$(SRCROOT)/EarlGrey/EarlGrey/"',
  }
  
  s.dependency 'fishhook'
  s.dependency 'OCHamcrest', '5.0.0'
  
  s.private_header_files = 
    'EarlGrey/Assertion/GREYAssertions+Internal.h',
    'EarlGrey/Traversal/GREYTraversalBFS.h',
    'EarlGrey/Common/GREYErrorConstants.h',
    'EarlGrey/Common/GREYScreenshotUtil+Internal.h',
    'EarlGrey/Action/GREYMultiFingerSwipeAction.h',
    'EarlGrey/Action/GREYTapAction.h',
    'EarlGrey/Action/GREYSlideAction.h',
    'EarlGrey/Common/GREYTestCaseInvocation.h',
    'EarlGrey/Action/GREYScrollAction.h',
    'EarlGrey/Action/GREYSwipeAction.h',
    'EarlGrey/Action/GREYPickerAction.h',
    'EarlGrey/Synchronization/GREYObjectDeallocationTracker.h',
    'EarlGrey/Synchronization/GREYAppStateTrackerObject.h',
    'EarlGrey/Action/GREYPinchAction.h',
    'EarlGrey/Action/GREYPathGestureUtils.h',
    'EarlGrey/Action/GREYChangeStepperAction.h',
    'EarlGrey/Action/GREYScrollToContentEdgeAction.h',
    'EarlGrey/Additions/UIView+GREYAdditions.h',
    'EarlGrey/Action/GREYActions+Internal.h',
    'EarlGrey/Additions/NSURL+GREYAdditions.h',
    'EarlGrey/Additions/UITouch+GREYAdditions.h',
    'EarlGrey/Additions/UIAnimation+GREYAdditions.h',
    'EarlGrey/Traversal/GREYTraversal.h',
    'EarlGrey/Additions/UIScrollView+GREYAdditions.h',
    'EarlGrey/Additions/UIApplication+GREYAdditions.h',
    'EarlGrey/Additions/UIViewController+GREYAdditions.h',
    'EarlGrey/Additions/NSURLConnection+GREYAdditions.h',
    'EarlGrey/Additions/UIGestureRecognizer+GREYAdditions.h',
    'EarlGrey/Additions/__NSCFLocalDataTask_GREYAdditions.h',
    'EarlGrey/Additions/_UIModalItemsPresentingViewController_GREYAdditions.h',
    'EarlGrey/Additions/UIWebView+GREYAdditions.h',
    'EarlGrey/Additions/UISwitch+GREYAdditions.h',
    'EarlGrey/Additions/UIWindow+GREYAdditions.h',
    'EarlGrey/Additions/XCTestCase+GREYAdditions.h',
    'EarlGrey/Additions/CAAnimation+GREYAdditions.h',
    'EarlGrey/Additions/CALayer+GREYAdditions.h',
    'EarlGrey/Additions/CGGeometry+GREYAdditions.h',
    'EarlGrey/Additions/NSError+GREYAdditions.h',
    'EarlGrey/Additions/NSObject+GREYAdditions.h',
    'EarlGrey/Additions/NSRunLoop+GREYAdditions.h',
    'EarlGrey/Additions/NSString+GREYAdditions.h',
    'EarlGrey/Additions/NSTimer+GREYAdditions.h',
    'EarlGrey/Common/GREYSwizzler.h',
    'EarlGrey/Common/GREYObjcRuntime.h',
    'EarlGrey/Common/GREYAnalytics.h',
    'EarlGrey/Common/GREYAnalyticsDelegate.h',
    'EarlGrey/Common/GREYErrorConstants.h',
    'EarlGrey/Common/GREYAppleInternals.h',
    'EarlGrey/Common/GREYError+Internal.h',
    'EarlGrey/Common/GREYFailureFormatter.h',
    'EarlGrey/Common/GREYLogger.h',
    'EarlGrey/Common/GREYSwizzler.h',
    'EarlGrey/Common/GREYObjectFormatter.h',
    'EarlGrey/Core/GREYKeyboard.h',
    'EarlGrey/Core/GREYInteractionDataSource.h',
    'EarlGrey/Delegate/GREYSurrogateDelegate.h',
    'EarlGrey/Delegate/GREYCAAnimationDelegate.h',
    'EarlGrey/Delegate/GREYUIWebViewDelegate.h',
    'EarlGrey/Delegate/GREYNSURLConnectionDelegate.h',
    'EarlGrey/Synchronization/GREYUIThreadExecutor+Internal.h',
    'EarlGrey/Event/GREYTouchInjector.h',
    'EarlGrey/Event/GREYZeroToleranceTimer.h',
    'EarlGrey/Event/GREYTouchInfo.h',
    'EarlGrey/Additions/NSURLSession+GREYAdditions.h',
    'EarlGrey/Traversal/GREYTraversalDFS.h',
    'EarlGrey/Event/GREYSyntheticEvents.h',
    'EarlGrey/Provider/GREYElementProvider.h',
    'EarlGrey/Provider/GREYUIWindowProvider.h',
    'EarlGrey/Synchronization/GREYRunLoopSpinner.h',
    'EarlGrey/Common/GREYStopwatch.h',
    'EarlGrey/Core/GREYElementInteraction+Internal.h',
    'EarlGrey/Matcher/GREYStringDescription.h',
    'EarlGrey/Synchronization/GREYAppStateTracker.h',
    'EarlGrey/Synchronization/GREYTimedIdlingResource.h',
    'EarlGrey/Common/GREYFailureScreenshotter.h',
    'EarlGrey/Synchronization/GREYDispatchQueueTracker.h'
end