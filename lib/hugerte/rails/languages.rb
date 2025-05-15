module HugeRTE::Rails
  class Languages < ::Rails::Engine
    initializer "precompile", group: :all do |app|
      app.config.assets.precompile << "hugerte-rails-langs.manifest.js" # Sprockets 4 manifest
    end
  end
end
