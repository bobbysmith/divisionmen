require "active_support/dependencies"

module SirTrevor

	mattr_accessor :app_root

  module Helpers
    autoload :ViewHelper, 'sir-trevor/helpers/view_helper'
    autoload :FormHelper, 'sir-trevor/helpers/form_helper'
    autoload :FormBuilder, 'sir-trevor/helpers/form_builder'
  end

  def self.setup
  	yield self
  end

end

require "sir-trevor/engine"