Pod::Spec.new do |s|
s.name = 'JKBaseKit'
s.version = '1.1.8'
s.license = 'MIT'
s.summary = 'Simple APP Kit'
s.homepage = 'https://github.com/lwq718691587/JKBaseKit'
s.authors = { '刘伟强' => '718691587@qq.com' }
s.source = { :git => "https://github.com/lwq718691587/JKBaseKit.git", :tag => "1.1.8"}
s.requires_arc = true
s.ios.deployment_target = '8.0'

s.dependency 'DateTools'
s.dependency 'MJRefresh'
s.dependency 'IQKeyboardManager'
s.dependency 'SDWebImage'
s.dependency 'JKNetWorking'
s.dependency 'Aspects'
s.dependency 'YYModel'
s.dependency 'Masonry'

s.public_header_files = 'JKBaseKit/JKBaseKit.h'
s.source_files = 'JKBaseKit/JKBaseKit.h'

s.subspec 'BaseUICategory' do |ss|
    ss.source_files = "JKBaseKit/BaseUICategory","*.{h,m}"
end


end
