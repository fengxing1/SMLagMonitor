#
# Be sure to run `pod lib lint SMLagMonitor.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SMLagMonitor'
  s.version          = '0.1.0'
  s.summary          = 'A short description of SMLagMonitor.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'http://git.2dfire.net/supply_ios/SMLagMonitor'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'feng_xing@126.com' => 'larou@2dfire.com' }
  s.source           = { :git => 'http://git.2dfire.net/supply_ios/SMLagMonitor.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'SMLagMonitor/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SMLagMonitor' => ['SMLagMonitor/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   s.dependency 'MJRefresh', '~> 3.3.0'
   s.dependency 'FMDB'
   s.dependency 'ReactiveCocoa', '=2.3'
   s.dependency 'Masonry'
end
