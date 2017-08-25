Pod::Spec.new do |s|
  s.name             = "DDVersion"
  s.version          = "1.1.2"
  s.summary          = "A universal Objective-C iOS library for quickly getting the mobile device type and name."
  s.homepage         = "http://github.com/Dids/DDVersion"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Pauli 'Dids' Jokela" => "pauli.jokela@didstopia.com" }

  s.source           = { :git => "https://github.com/Dids/DDVersion.git", :tag => "1.1.2" }
  s.source_files     = 'DDVersion/*.{h,m}'
  s.resources        = 'DDVersion/*.plist'
  
  s.platform         = :ios, '8.4'
  s.requires_arc     = true
end
