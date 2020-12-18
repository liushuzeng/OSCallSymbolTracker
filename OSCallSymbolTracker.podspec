#
# Be sure to run `pod lib lint OSCallSymbolTracker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'OSCallSymbolTracker'
  s.version          = '0.1.0'
  s.summary          = 'call symbol'

  s.homepage         = 'https://github.com/liushuzeng/OSCallSymbolTracker'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '794895276@qq.com' => '794895276@qq.com' }
  s.source           = { :git => 'https://github.com/liushuzeng/OSCallSymbolTracker.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

#  s.source_files = 'OSCallSymbolTracker/Classes/**/*'
  
  s.ios.source_files = 'OSCallSymbolTracker/*.{h,m}'
  s.ios.preserve_path = 'OSCallSymbolTracker/symbol_tracker.rb'

  s.ios.pod_target_xcconfig = {
      'ENABLE_BITCODE' => 'NO'
    }

  s.ios.user_target_xcconfig = {
      'ENABLE_BITCODE' => 'NO',
      'OTHER_CFLAGS' => '$(inherited) -fsanitize-coverage=func,trace-pc-guard',
      'OTHER_SWIFT_FLAGS' => '$(inherited) -sanitize=undefined -sanitize-coverage=func'
    }
end
