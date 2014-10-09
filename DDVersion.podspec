Pod::Spec.new do |s|
  s.name             = "DDVersion"
  s.version          = "1.0.0"
  s.summary          = "A universal Objective-C library for quickly getting the iOS device type and name."
  s.homepage         = "http://github.com/Dids/DDVersion"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Pauli 'Dids' Jokela" => "pauli.jokela@didstopia.com" }
  s.source           = { :git => "https://github.com/Dids/DDVersion.git", :tag => "1.0.0" }
  
  s.platform     = :ios, '5.0'
  s.requires_arc = true

  s.source_files  = 'DDVersion/*.{h,m}'
end
