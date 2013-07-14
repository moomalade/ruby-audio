Gem::Specification.new do |s|
  s.name    = 'ruby-audio'
  s.version = '0.2.1'
  s.summary = 'ruby-audio wraps around libsndfile to provide simplified sound reading and writing support to ruby programs'
  s.authors  = ['Hans Fugal <hans@fugal.net>', 'Stephen Augenstein']
  s.email    = 'perl.programmer@gmail.com'
  s.homepage = 'http://github.com/warhammerkid/ruby-audio'

  s.platform      = Gem::Platform::RUBY
  s.has_rdoc      = true
  s.files         = Dir['ruby-audio.gemspec', 'README.rdoc', 'Rakefile', 'LICENSE', 'TODO', 'examples/**/*.rb', 'examples/**/*.wav', 'lib/**/*.rb', 'test/*.rb', 'test/*.wav', 'ext/sndfile/extconf.rb', 'ext/sndfile/sndfile.i']
  s.require_paths = ['lib','ext']
  s.extensions    = ["ext/sndfile/extconf.rb"]
  s.test_files    = Dir[*['test/*.rb']]

  s.add_dependency('narray')
  s.requirements << 'libsndfile (http://www.mega-nerd.com/libsndfile/)'
  s.requirements << 'SWIG (http://www.swig.org/)'
end

