Pod::Spec.new do |s|
  s.name             	= "NSFileManager+Helper"
  s.version          	= "0.1.2"
  s.summary          	= "Helper methods for widening functionality of NSFileManager."
  s.description      	= "Useful methods for widening functionality of NSFileManager."
  s.homepage         	= "https://github.com/Bogdan-Stasjuk/NSFileManager-Helper"
  s.license      		= { :type => 'MIT', :file => 'LICENSE' }
  s.author           	= { "Bogdan Stasjuk" => "Bogdan.Stasjuk@gmail.com" }
  s.source           	= { :git => "https://github.com/Bogdan-Stasjuk/NSFileManager-Helper.git", :tag => '0.1.2' }
  s.social_media_url 	= 'https://twitter.com/Bogdan_Stasjuk'
  s.platform     		= :ios, '7.0'
  s.requires_arc 	= true
  s.source_files 	= 'NSFileManager+Helper/*.{h,m}'
  s.public_header_files   	= 'NSFileManager+Helper/*.h'
end
