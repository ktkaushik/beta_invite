require "rails/generators"

module BetaInvite
  module Generators
    class ViewGenerator < Rails::Generators::Base

      desc "this generator would copy all the view files for beta_invite engine into your rails app"
      def create_views
        directory "#{Rails.root.join('app','views')}", File.expand_path('../../../../app/views/beta_invite', __FILE__)
      end
    end
  end
end
