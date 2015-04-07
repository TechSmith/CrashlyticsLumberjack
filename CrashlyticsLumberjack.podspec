Pod::Spec.new do |s|
  s.name         = "CrashlyticsLumberjack"
  s.version      = "2.0.1-beta"
  s.summary      = "A Crashlytics Logging->CocoaLumberjack Bridge."  
  s.homepage     = "http://github.com/TechSmith/CrashlyticsLumberjack"
  s.license      = { :type => 'BSD', :file => 'LICENSE' }
  s.author       = { "Mike Simons" => "m.simons@techsmith.com" }
  s.source       = { :git => "https://github.com/TechSmith/CrashlyticsLumberjack.git", :tag => s.version.to_s }

  s.source_files  = 'Source', 'Source/CrashlyticsLogger.{h,m}'
  s.requires_arc  = true

  s.osx.deployment_target = '10.7'
  s.ios.deployment_target = '5.0'

  s.dependency 'CocoaLumberjack/Default', '~> 2.0.0'

  s.subspec 'Framework' do |sp|
  	sp.platform = :ios, '8.0'
    sp.dependency 'CrashlyticsFramework', '~> 2.2'
  end

end
