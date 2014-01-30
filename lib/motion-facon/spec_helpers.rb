module Facon
  module SpecHelpers
    def self.extended(base)
      return if Object.included_modules.include?(Facon::Mockable)
      Object.class_eval { include Facon::Mockable }
      base.class.class_eval { include Facon::Baconize::ContextExtensions }
      Should.class_eval { include Facon::Baconize::ShouldExtensions }
    end
  end
end
