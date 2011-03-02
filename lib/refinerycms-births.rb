require 'refinery'
require File.expand_path('../births', __FILE__)

module Refinery
  module Births

    class Engine < Rails::Engine
      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "refinerycms_cradle_rolls"
          plugin.menu_match = /(admin|refinery)\/cradle_roll$/
          plugin.url = {:controller => '/admin/cradle_roll', :action => 'index'}
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
