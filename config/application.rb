require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module JanusApi
  POINTS = [0,1,2,3,5,8,13]
  STORY_STATE = ["icebox", "todo", "doing", "done", "dropped"]
  PROJECT_STATE = ["incomplete", "inactive", "complete"]

  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true

    config.api_only = true
    config.middleware.insert_before 0, "Rack::Cors" do
      allow do
        origins '*'
        resource '*', :headers => :any, :methods => [:get, :post, :put, :delete, :options]
      end
    end
  end
end
