Pod::Spec.new do |s|
s.name = 'JKBaseKit'
s.version = '1.1.9'
s.license = 'MIT'
s.summary = 'Simple APP Kit'
s.homepage = 'https://github.com/lwq718691587/JKBaseKit'
s.authors = { '刘伟强' => '718691587@qq.com' }
s.source = { :git => "https://github.com/lwq718691587/JKBaseKit.git", :tag => "1.1.9"}
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

s.subspec 'JKUICategory' do |ss|
    ss.source_files = "JKBaseKit/JKUICategory","*.{h,m}"
end

s.subspec 'FastCoder' do |ss|
    ss.source_files = "JKBaseKit/FastCoder","*.{h,m}"
end

s.subspec 'JKNSCategory' do |ss|
    ss.source_files = "JKBaseKit/JKNSCategory","*.{h,m}"
end

s.subspec 'Segment' do |ss|
    ss.dependency 'JKBaseKit/JKUICategory'
    ss.source_files = "JKBaseKit/Segment","*.{h,m}"
end

s.subspec 'FunMacro' do |ss|
    ss.source_files = "JKBaseKit/FunMacro","*.{h,m}"
end

end
