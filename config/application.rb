require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module App1
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.i18n.default_locale = :ja
    config.load_defaults 5.1



    #carrierwaveのエラー対策
    config.autoload_paths += Dir[Rails.root.join('app', 'uploaders')]
    # deviseの複数モデルに対してストロングパラメーターの追加
    config.autoload_paths += Dir[Rails.root.join('app', 'parameters', '**', '*')]

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
