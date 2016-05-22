Gem::Specification.new do |s|
  s.name     = 'jekyll-multilingual'
  s.version  = '3.1.6'
  s.license  = 'MIT'
  s.summary  = 'Multilingual version of the Jekyll default theme'
  s.author   = 'Sylvain Durand'
  s.email    = 'github@durand.tf'
  s.homepage = 'https://www.sylvaindurand.org/making-jekyll-multilingual/'
  s.files    = `git ls-files -z`.split("\x0").grep(%r{^_(includes|layouts)/})
end
