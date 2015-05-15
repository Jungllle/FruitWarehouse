require "fruit_warehouse/rails/helpers"

module FruitWarehouse
  module Rails
    class Railtie < ::Rails::Railtie
     initializer "fruit_warehouse.view_helpers" do
        ActionView::Base.send :include, ViewHelpers
      end
    end
  end
end
