require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DiarioDaHumanidade
  class Application < Rails::Application
    # Locales config
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
    config.i18n.enforce_available_locales = false
    config.i18n.available_locales = ["pt-BR", "en"]
    config.i18n.default_locale = :'pt-BR'

    config.active_record.raise_in_transactional_callbacks = true
  end
end
