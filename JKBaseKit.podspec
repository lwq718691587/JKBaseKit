Pod::Spec.new do |s|
s.name = 'JKBaseKit'
s.version = '1.0.2'
s.license = 'MIT'
s.summary = 'Simple APP Kit'
s.homepage = 'https://github.com/lwq718691587/JKBaseKit'
s.authors = { '刘伟强' => '718691587@qq.com' }
s.source = { :git => "https://github.com/lwq718691587/JKBaseKit.git", :tag => "1.0.2"}
s.requires_arc = true
s.ios.deployment_target = '8.0'
s.source_files = "JKBaseKit", "*.{h,m}"
spec.dependency 'AFNetworking', '~> 3.0.2'
spec.dependency 'DateTools'
spec.dependency 'MJRefresh'
spec.dependency 'IQKeyboardManager'
spec.dependency 'SDWebImage'
end
