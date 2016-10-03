Pod::Spec.new do |s|
  s.name         = "CrashlyticsLumberjack"
  s.version      = "3.0.0"
  s.summary      = "A Crashlytics Logging->CocoaLumberjack Bridge."  
  s.homepage     = "http://github.com/TechSmith/CrashlyticsLumberjack"
  s.license      = { :type => 'BSD', :file => 'LICENSE' }
  s.author       = { "Mike Simons" => "m.simons@techsmith.com" }
  s.source       = { :git => "https://github.com/TechSmith/CrashlyticsLumberjack.git", :tag => s.version.to_s }

  s.source_files  = 'Source', 'Source/CrashlyticsLogger.{h,m}'
  s.requires_arc  = true

  s.osx.deployment_target = '10.8'
  s.ios.deployment_target = '7.0'

  s.dependency 'CocoaLumberjack/Default', '~> 3.0'
  s.dependency 'Crashlytics'
  

end
