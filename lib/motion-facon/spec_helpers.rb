module Facon
  module SpecHelpers
    def self.extended(base)
      Object.class_eval { include Facon::Mockable }
      base.class.class_eval { include Facon::Baconize::ContextExtensions }
      Should.class_eval { include Facon::Baconize::ShouldExtensions }
    end
  end
end
