require File.expand_path('../boot', __FILE__)

#require 'rails/all'
require "action_controller/railtie"
#require "action_mailer/railtie"
#require "sprockets/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MostPopularLanguageAtGitHub
  class Application < Rails::Application
    config.generators do |g|
      g.test_framework :rspec,
        fixtutes: false,
        view_specs: false,
        helper_specs: false,
        routing_specs: false,
        controller_specs: true,
        request_specs: false
    end
  end
end
