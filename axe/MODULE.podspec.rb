Pod::Spec.new do |s|
  s.name                      = "NAME"
  s.version                   = "AXE_VERSION"
  s.summary                   = "SUMMARY"
  s.homepage                  = "https://github.com/axe-org/axe"
  s.license                   = "None"
  s.author                    =  "axe-org"
  s.ios.deployment_target     = "8.0"
  s.source                    = { :git => "https://git.coding.net/axe-org/demo-login.git", :tag => s.version}
  s.default_subspec           = "api"
  s.header_dir                = "NAME"
  s.subspec "api" do |ss|
    ss.source_files           = "Module/API.h"
  end
  s.subspec "source" do |ss|
    ss.dependency               "NAME/api"
    ss.source_files           = "Module/Classes/**/*.{h,m}"
  end
  s.subspec "release" do |ss|
    ss.dependency               "NAME/api"
    ss.vendored_frameworks    = "axe/NAME.framework"
  end

  # 用户如此配置， 具体版本号与依赖设定，自动处理。
  AXE_DEPENDENCY
  
end