module FruitWarehouse
  module Rails
    class Engine < ::Rails::Engine
      initializer 'fruit_warehouse.assets.precompile' do |app|
        %w(stylesheets fonts).each do |sub|
          app.config.assets.paths << root.join('assets', sub).to_s
        end

        app.config.assets.precompile << /\.(?:svg|eot|woff|woff2|ttf)\z/
      end
    end
  end
end
