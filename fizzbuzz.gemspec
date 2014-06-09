Gem::Specification.new do |s|
  s.name        = 'fizzbuzz'
  s.version     = '0.0.1'
  s.executables << 'fizzbuzz'
  s.summary     = 'fizzbuzz'
  s.description = 'A simple fizzbuzz implementation'
  s.authors     = ['Joel Tanner Jones']
  s.email       = 'jonesjoe@ecu.edu'
  s.files       = Dir['lib/*', 'lib/**/*', 'rakefile', 'test/*']
  s.homepage    = 'http://www.collegestar.org'
  s.license     = 'MIT'
end
