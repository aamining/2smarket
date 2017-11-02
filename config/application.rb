require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ProjectRailsThree
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # show rails asset pipeline where vendor assets are located
    # http://makandracards.com/makandra/8951-rails-asset-pipeline-how-to-organize-stylesheets-in-sub-folders
    # config.assets.paths += Dir["#{Rails.root}/vendor/assets/*"].sort_by { |dir| -dir.size }
    config.assets.paths << Rails.root.join("vendor/assets/themesumo")
  end
end
