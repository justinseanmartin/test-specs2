Pod::Spec.new do |s|
  s.name         = 'Core'
  s.version      = '1.0.1'
  s.summary      = 'Small library that can be used to test CocoaPod stuff (CI, building etc.)'
  s.homepage     = 'https://cocoapods.org'
  s.license      = { :type => 'Proprietary', :text => "© #{ Date.today.year } Justin Martin, Inc." }
  s.author       = { 'Justin Martin' => 'justinseanmartin on github' }
  s.source       = { :git => 'https://github.com/justinseanmartin/cannonpodder.git', :tag => "#{s.version.to_s}-Core" }
  
  s.ios.deployment_target = '9.0'
  
  s.source_files = 'Core/*.{h,m}'

  s.test_spec 'Test' do |test|
    test.source_files = 'Core/Tests/*.{h,m}'
  end
end
