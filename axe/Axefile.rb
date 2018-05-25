AxeConfig.new do |s|
  s.name           = "NAME"
  s.workspace      = "Module.xcworkspace" 
  s.scheme         = "NAME"
  s.version        = "0.0.1"
  # 声明文件
  s.header         = "Module/API.h"
  # 私有仓库名
  s.pod_repo       = "axe-demo"
  # 类型， app/ground/module
  s.type           = "TYPE"
  # 依赖，格式是 "Login" => "0.0.1"
  s.dependency     = {

  }
end