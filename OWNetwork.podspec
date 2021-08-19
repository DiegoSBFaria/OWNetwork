#
# Be sure to run `pod lib lint Testando.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'OWNetwork'
  s.version          = '0.1.0'
  s.summary          = 'URL Requester'
  s.homepage         = 'https://github.com/Diego Faria/Testando'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Diego Faria' => 'diego.sb.faria@gmail.com' }
  s.source           = { :git => 'https://github.com/Diego Faria/Testando.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'

  s.default_subspecs = 'Debug'
  s.subspec "Debug" do |debug|
    debug.source_files = 'OWNetwork/**/*'
    debug.resources = 'OWNetwork/**/*.{png.jpeg,jpg,storyboard,xib,lproj,ttf,xcassets,string,json}'
  end
  
end
