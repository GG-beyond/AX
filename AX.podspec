
Pod::Spec.new do |s|


  s.name         = "AX"
  s.version      = "1.0.0"
  s.summary      = "A short description of 组件化"

  s.description  = <<-DESC
				组件化测试,就只是测试而已，字数还不够嘛
                   DESC

  s.homepage     = "https://github.com/GG-beyond/AX.git"

  s.platform    = :ios, "7.0"

  s.license      = "MIT"



  s.author             = { "GG-beyond" => "872608550@qq.com" }


  s.source       = { :git => "https://github.com/GG-beyond/AX", :tag => "1.0.0" }



  s.source_files  = "AX", "AX/**/*.{h,m}"
  #s.exclude_files = "Classes/Exclude"


end
