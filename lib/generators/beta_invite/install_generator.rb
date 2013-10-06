#
# TODO: add copy migration file as well. No need for developer to run another command
#
module BetaInvite
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      desc "Creates a BetaInvite initializer"

      def copy_initializer
        template "beta_invite.rb", "config/initializers/beta_invite.rb"
      end

      # Display readme when the user installs the gem. inspired from Devise gem :)
      def show_readme
        readme "README" if behavior == :invoke
      end
    end
  end
end