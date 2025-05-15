assets_task = Rake::Task.task_defined?('assets:precompile:primary') ? 'assets:precompile:primary' : 'assets:precompile'

Rake::Task[assets_task].enhance do
  require "hugerte/rails/asset_installer"

  assets = Pathname.new(File.expand_path(File.dirname(__FILE__) + "/../../vendor/assets/javascripts/hugerte"))

  config   = Rails.application.config
  target   = File.join(Rails.public_path, config.assets.prefix)
  manifest = config.assets.manifest

  installer = hugerte::Rails::AssetInstaller.new(assets, target, manifest)
  installer.log_level = Logger::INFO
  installer.strategy = config.hugerte.install
  installer.install
end
