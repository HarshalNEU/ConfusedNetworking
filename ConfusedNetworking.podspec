
Pod::Spec.new do |s|

  s.name         = "ConfusedNetworking"
  s.version      = "0.0.1"
  s.summary      = "A Networking Layer for all confused developers who can deside the sterilization method."
  s.description  = "ConfusedNetworking a framework that allows you to pick from JSONSerilizaiton, SwiftyJson or Codeable Enums to decide on the parsing method you would want to implement for any API requests that you make."
  s.homepage     = "http://www1.coe.neu.edu/~neelkamalh/Portfolio/"

  #s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "HarshalNEU" => "neelkamal.h@husky.neu.edu" }

  s.platform     = :ios, "11.0"

  s.source       = { :git => "https://github.com/HarshalNEU/ConfusedNetworking.git", :tag => "#{s.version}" }

  s.source_files  = "ConfusedNetworking"

  s.swift_version = "4.2" 

end
