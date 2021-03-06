# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

Rails.application.config.public_file_server.enabled = true

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.

Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.paths << Rails.root.join("app", "assets")
Rails.application.config.assets.paths << Rails.root.join("app", "assets", "images")
Rails.application.config.assets.paths << Rails.root.join("app", "assets", "javascript")
Rails.application.config.assets.paths << Rails.root.join("app", "assets", "stylesheets")
Rails.application.config.assets.precompile += %w(application.js application.scss)

# Dir.glob("#{Rails.root}/app/assets/images/").each do |path|
#   Rails.application.config.assets.paths << path
# end

# Precompile additional assets.
# application.js, application.scss, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
