#
#  Be sure to run `pod spec lint XTCCategories.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "XTCCategories"
  s.version      = "0.0.6"
  s.summary      = "A manager to get iOS keyboard views, frames and transform."
#s.description  = <<-DESC
#
  s.homepage     = "https://github.com/xtcmoons/XTCCategories"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

#s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "陈明" => "xtcmoons@yeah.net" }
  # Or just: s.author    = "陈明"
  # s.authors            = { "陈明" => "chenming2@lppz.com" }
  # s.social_media_url   = "http://twitter.com/陈明"
#
  # s.platform     = :ios
  s.platform     = :ios, "8.0"

  #  When using multiple platforms
  s.ios.deployment_target = "8.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"
  # s.tvos.deployment_target = "9.0"

  s.source       = { :git => "https://github.com/xtcmoons/XTCCategories.git", :tag => s.version }

  s.source_files  = "Categories", "Categories/*.{h}", "Categories/**/*.{h,m}"
#s.exclude_files = "Classes/Exclude"
#s.public_header_files = "Categories/*.h"

  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"

  # s.framework  = "SomeFramework"
  s.frameworks = 'UIKit', 'CoreFoundation' ,'QuartzCore', 'CoreGraphics', 'CoreImage', 'CoreText', 'ImageIO', 'Accelerate'

  # s.library   = "iconv"
#s.libraries = "z"

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
