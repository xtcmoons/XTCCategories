#
#  Be sure to run `pod spec lint XTCCategories.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "XTCCategories"
  s.version      = "0.0.8"

  s.summary      = "A manager to get iOS keyboard views, frames and transform."
  s.homepage     = "https://github.com/xtcmoons/XTCCategories"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "陈明" => "xtcmoons@yeah.net" }
  s.platform     = :ios, "8.0"

  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/xtcmoons/XTCCategories.git", :tag => s.version }
  s.source_files  = "Categories", "Categories/*.{h}", "Categories/**/*.{h,m}"
  s.frameworks = 'UIKit', 'CoreFoundation' ,'QuartzCore', 'CoreGraphics', 'CoreImage', 'CoreText', 'ImageIO', 'Accelerate'

end
