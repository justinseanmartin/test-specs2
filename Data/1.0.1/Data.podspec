Pod::Spec.new do |s|
  s.name         = 'Data'
  s.version      = '1.0.1'
  s.summary      = 'Small library that can be used to test CocoaPod stuff (CI, building etc.)'
  s.homepage     = 'https://cocoapods.org'
  s.license      = { :type => 'Proprietary', :text => "© #{ Date.today.year } Justin Martin, Inc." }
  s.author       = { 'Justin Martin' => 'justinseanmartin on github' }
  s.source       = { :git => 'https://github.com/justinseanmartin/cannonpodder.git', :tag => "#{s.version.to_s}-Data" }
  
  s.ios.deployment_target = '9.0'

  s.dependency 'Core', '~> 1.0'
  
  s.source_files = 'Data/*.{h,m}'

  s.test_spec 'Tests' do |test|
    test.source_files = 'Data/Tests/*.{h,m}'
    test.dependency 'Testing', '~> 1.0'
  end
end
