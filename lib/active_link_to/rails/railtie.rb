module ActiveLinkTo
  module Rails
    class Railtie < ::Rails::Railtie

      config.active_link_to = ActiveSupport::OrderedOptions.new
      config.active_link_to.active = nil

      initializer "active_link_to.rails.helpers" do
        ActionView::Base.send :include, Helpers
      end

    end
  end
end