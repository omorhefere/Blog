# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( articles.css.sass )
Rails.application.config.assets.precompile += %w( comments.css.sass )
Rails.application.config.assets.precompile += %w( story.css.sass )
Rails.application.config.assets.precompile += %w( me.css.sass )
Rails.application.config.assets.precompile += %w( portfolio.css.sass )
Rails.application.config.assets.precompile += %w( contact.css )


# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( application.js )
Rails.application.config.assets.precompile += %w( graph.js )
Rails.application.config.assets.precompile += %w( me.js )
Rails.application.config.assets.precompile += %w( portfolio.js )
