
Pod::Spec.new do |s|


  s.name         = "AX"
  s.version      = "0.0.1"
  s.summary      = "A short description of AX.组件化"

  s.description  = <<-DESC
				组件化测试,就只是测试而已，字数还不够嘛
                   DESC

  s.homepage     = "https://github.com/GG-beyond/AX"



  s.license      = "MIT (example)"



  s.author             = { "GG-beyond" => "872608550@qq.com" }


  s.source       = { :git => "https://github.com/GG-beyond/AX", :tag => “1.0.1” }



  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"


end
