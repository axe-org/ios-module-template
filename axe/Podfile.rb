#source "https://github.com/axe-org/demo-private-spec.git"
#source "https://github.com/CocoaPods/Specs.git"

target "NAME" do
  # 标记插入地址。
  AXE_PODFILE

end

target "Localhost" do
  # Pods for Test
  pod "NAME/source", :path=> "./"

end

# 处理 同名 scheme问题。
post_install do |installer|
  installer.pods_project.targets.each do |target|
    # 设置为模块打包scheme名， 以避免pod创建同名的scheme
    if target.name.eql?("NAME")
        target.name = "LocalNAME"
    end
  end
end
