require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
# require "action_mailbox/engine"
# require "action_text/engine"
require "action_view/railtie"
# require "action_cable/engine"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module September
  class Application < Rails::Application
    config.load_defaults 7.0

    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    config.active_job.queue_adapter = :good_job
    config.view_component.preview_paths << "#{Rails.root}/spec/components/previews"
    config.lookbook.page_paths << "#{Rails.root}/spec/components/docs"

    config.generators do |g|
      g.assets false
      g.helper false
      g.preview true
      g.system_tests false
    end
  end
end
