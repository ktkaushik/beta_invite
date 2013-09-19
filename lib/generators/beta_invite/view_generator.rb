require "rails/generators"

module BetaInvite
  module Generators
    class ViewGenerator < Rails::Generators::Base
      source_root File.expand_path('../../../../app/views/beta_invite/beta_invites', __FILE__)

      desc "this generator would copy all the view files for beta_invite engine into your rails app"

      def create_views
        copy_file 'new.html.erb', Rails.root.join('app','views','beta_invite','beta_invites','new.html.erb')
        copy_file 'index.html.erb', Rails.root.join('app','views','beta_invite','beta_invites','index.html.erb')
      end
    end
  end
end
