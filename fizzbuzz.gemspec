Gem::Specification.new do |s|
  s.name        = 'fizzbuzz'
  s.version     = '0.0.1'
  s.executables << 'fizzbuzz'
  s.summary     = 'fizzbuzz'
  s.description = 'A simple fizzbuzz implementation'
  s.authors     = ['Joel Tanner Jones']
  s.email       = 'tannerjones10@gmail.com'
  s.files       = Dir['lib/*', 'lib/**/*', 'rakefile', 'test/*']
  s.homepage    = 'http://www.jtannerjones.com'
  s.license     = 'MIT'
end
