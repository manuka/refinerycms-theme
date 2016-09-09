require "rails/engine"

module Refinery
  module Theme
    class Engine < ::Rails::Engine
      isolate_namespace ::Refinery
      engine_name :refinerycms_theme

      config.to_prepare do
        Rails.application.config.assets.precompile += %w(
          refinery.css
        )
      end
    end
  end
end
