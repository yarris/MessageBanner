#
# Be sure to run `pod lib lint MessageBanner.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "MessageBanner"
  s.version          = "1.0.4"
  s.summary          = "iOS Notification / Message easy to use and fully customisable"
  s.description      = <<-DESC

                      This library provides an **easy to use and fully customizable class to show notifications** views on top/bottom/center of the screen.

                      The messages banners are regrouped in 4 different type : **Error**, **Warning**, **Message** and **Success**.

                      Each different type of banner can have different and fully customizable appearance and behavior. (See configuration section)

                      Each banner can show a **title**, a **subtitle**, an **image** and a **button**.

                       DESC
  s.homepage         = "https://github.com/Loadex/MessageBanner"
  s.screenshots      =     "https://raw.githubusercontent.com/Loadex/MessageBanner/master/Screenshots/MessageBannerErrorType.png", "https://raw.githubusercontent.com/Loadex/MessageBanner/master/Screenshots/MessageBannerWarningType.png" , "https://raw.githubusercontent.com/Loadex/MessageBanner/master/Screenshots/MessageBannerMessageType.png" , "https://raw.githubusercontent.com/Loadex/MessageBanner/master/Screenshots/MessageBannerSuccessType.png"

  s.license          = 'MIT'
  s.author           = { "Thibault Carpentier" => "carpen_t@epitech.eu" }
  s.source           = { :git => "https://github.com/Loadex/MessageBanner.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'MessageBanner/Classes/**/*.{h,m}', 'MessageBanner/Views/**/*.{h,m}'
  s.resources = 'MessageBanner/Ressources/**/*.{png,json}'

  # prevent Xcode 8.x's pngcrush from complaining
  s.pod_target_xcconfig = { 'COMPRESS_PNG_FILES' => 0, 'STRIP_PNG_TEXT' => 0 }

  s.public_header_files = 'MessageBanner/Classes/**/*.{h}', 'MessageBanner/Views/**/*.{h}'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'HexColors', '~> 2.3.0'
  s.dependency 'FXBlurView', '~> 1.6.1'
end
