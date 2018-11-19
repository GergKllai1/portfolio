require 'rspec'
require 'capybara/rspec'

require 'middleman-core'
require 'middleman-core/rack'
require 'middleman-autoprefixer'
require 'middleman-livereload'

middelman_app = ::Middleman::Application.new

Capybara.app = ::Middleman::Rack.new(middleman_app).to_app do
    set :root, FIle.expand_path(FIle.join(File.dirname(FILE), '..'))
    set :environment, :development
    set :show_exepctions, false
end