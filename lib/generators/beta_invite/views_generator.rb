require "rails/generators"

# Generate View Generator
module BetaInvite
  module Generators
    class ViewsGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../../app/views/beta_invite/beta_invites', __FILE__)

      desc "this generator would copy all the view files for beta_invite engine into your rails app"

      # Generate views from the beta_invite gem
      def create_views
        copy_file 'new.html.erb', Rails.root.join('app','views','beta_invite','beta_invites','new.html.erb')
        copy_file 'index.html.erb', Rails.root.join('app','views','beta_invite','beta_invites','index.html.erb')
      end
    end
  end
end