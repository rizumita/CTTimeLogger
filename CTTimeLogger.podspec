Pod::Spec.new do |s|
  s.name         = "CTTimeLogger"
  s.version      = "0.0.1"
  s.summary      = "CTTimeLogger is a class for execution time logging."
  s.homepage     = "https://github.com/rizumita/CTTimeLogger"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Ryoichi Izumita" => "r.izumita@caph.jp" }
  s.source       = { :git => "https://github.com/rizumita/CTTimeLogger.git", :tag => "0.0.1" }
  s.source_files = 'CTTimeLogger/CTTimeLogger.{h,m}'
  s.requires_arc = true
end
