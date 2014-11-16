Rails.application.config.assets.precompile << %r(.*.(?:eot|svg|ttf|woff)$)
Rails.application.config.assets.precompile += %w(
  teaspoon.css
  teaspoon-teaspoon.js
  teaspoon-jasmine.js
)

Rails.application.config.assets.precompile << Proc.new do |path|
  path =~ /font-awesome\/fonts/ and File.extname(path).in?(['.otf', '.eot', '.svg', '.ttf', '.woff'])
end

Rails.application.config.assets.paths << Rails.root.join('vendor', 'assets', 'bower_components')
Rails.application.config.assets.paths << Rails.root.join('vendor', 'assets', 'bower_components', 'bootstrap-sass-official', 'assets', 'fonts')
Rails.application.config.assets.paths << Rails.root.join('vendor', 'assets', 'bower_components', 'font-awesome', 'fonts')

