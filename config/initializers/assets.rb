# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

# Images
Rails.application.config.assets.precompile += %w( app/ico/favico.png )
Rails.application.config.assets.precompile += %w( app/ico/favico.ico )

# Stylesheets
Rails.application.config.assets.precompile += %w( app/css/dependencies.css )
Rails.application.config.assets.precompile += %w( app/css/syrena-admin.css )

# Javascript
Rails.application.config.assets.precompile += %w( app/js/main.js )
Rails.application.config.assets.precompile += %w( app/js/dependencies.js )
Rails.application.config.assets.precompile += %w( jquery-icheck/jquery.icheck.min.js )
Rails.application.config.assets.precompile += %w( bootstrap3-datetimepicker/js/bootstrap-datetimepicker.min.js )
