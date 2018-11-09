#
# Be sure to run `pod lib lint JKDateHelper.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'JKDateHelper'
  s.version          = '0.1.0'
  s.summary          = 'this is a tool to help developer to convert the date to string or convert string to date.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
this is a tool to help developer to convert the date to string or convert string to date.it will update with the need
                       DESC

  s.homepage         = 'https://github.com/xindizhiyin2014/JKDateHelper'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xindizhiyin2014' => 'jack18@same.com' }
  s.source           = { :git => 'https://github.com/xindizhiyin2014/JKDateHelper.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'JKDateHelper/Classes/**/*'
  
  # s.resource_bundles = {
  #   'JKDateHelper' => ['JKDateHelper/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
