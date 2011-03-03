require 'refinery'
require File.expand_path('../births', __FILE__)

module Refinery
  module Births

    class Engine < Rails::Engine
      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "refinerycms_cradle_rolls"
          plugin.menu_match = /(admin|refinery)\/births?$/
          plugin.url = {:controller => 'admin/births', :action => 'index'}
          plugin.activity = {
            :class => Birth,
            :title => 'name',
            :url_prefix => 'edit'
          }
        end
      end
    end

  end
end
