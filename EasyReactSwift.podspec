Pod::Spec.new do |s|
  s.name             = "EasyReactSwift"
  s.version          = "0.0.1"
  s.summary          = "Make reactive programming easier for you."

  s.description      = <<-DESC
Are you confused by the functors, applicatives, and monads in RxSwift and ReactiveCocoa? It doesn't matter, the concepts are so complicated that not many developers actually use them in normal projects. Is there an easy-to-use way to use reactive programming? EasyReact is born for this reason.
DESC

  s.homepage         = "https://github.com/meituan/EasyReactSwift"
  s.license          = { :type => 'Apache License 2.0', :file => 'LICENSE' }
  s.author           = { 'William Zang' => 'chengwei.zang.1985@gmail.com' }
  s.source           = { :git => "https://github.com/meituan/EasyReactSwift.git", :tag => s.version.to_s }

  s.requires_arc          = true

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'

  s.source_files          = 'Sources/**/*.swift'
end
