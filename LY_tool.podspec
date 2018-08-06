#
# Be sure to run `pod lib lint LY_tool.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LY_tool'
  s.version          = '0.0.3'
  s.summary          = 'LY_tool.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
常用的一些分类，自定义view,工具类
                       DESC

  s.homepage         = 'https://github.com/helloLiYong/LY_tool'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'LY' => '895825110@qq.com' }
  s.source           = { :git => 'https://github.com/helloLiYong/LY_tool.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

#s.source_files = 'LY_tool/Classes/**/*'

    s.subspec 'LY_Category' do |t|
    t.source_files = 'LY_tool/Classes/LY_Category/**/*'
    end

    s.subspec 'LY_CustomView' do |c|
    c.source_files = 'LY_tool/Classes/LY_CustomView/**/*'
    end

    s.subspec 'LY_DeviceTool' do |d|
    d.source_files = 'LY_tool/Classes/LY_DeviceTool/**/*'
    end

  # s.resource_bundles = {
  #   'LY_tool' => ['LY_tool/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
