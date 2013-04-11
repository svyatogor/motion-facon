$:.push File.expand_path('../lib', __FILE__)
require 'motion-facon/version'

Gem::Specification.new do |s|
  s.name        = 'motion-facon'
  s.version     = MotionFacon::VERSION
  s.authors     = ['chuyeow', 'svyatogor']
  s.email       = ['chuyeow@gmail.com', 'svyatogor@gmail.com']
  s.homepage    = 'https://github.com/svyatogor/motion-facon'
  s.summary     = %q{Tiny mocking library.}
  s.description = %q{Port of facon mocking library to rubymotion.}

  s.rubyforge_project = 'motion-facon'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features,app}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
end
