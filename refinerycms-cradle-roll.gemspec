Gem::Specification.new do |s|
  s.name              = %q{refinerycms-cradle-roll}
  s.version           = %q{1.0}
  s.description       = %q{A way to post new births to RefineryCMS-driven website.}
  s.date              = %q{2011-03-01}
  s.summary           = %q{A way to post new births to RefineryCMS-driven website.}
  s.email             = %q{me@gabeanzelini.com}
  s.homepage          = %q{http://gabeanzelini.com}
  s.authors           = %w(Gabe Anzelini)
  s.require_paths     = %w(lib)

  s.add_dependency    'refinerycms', '~>1.0.8'

  s.files             = [
    'app',
    'app/controllers',
    'app/controllers/admin',
    'app/controllers/admin/births_controller.rb',
    'app/controllers/births_controller.rb',
    'app/models',
    'app/models/birth.rb',
    'app/views',
    'app/views/admin',
    'app/views/admin/births',
    'app/views/admin/births/_form.html.erb',
    'app/views/admin/births/_birth.html.erb',
    'app/views/admin/births/edit.html.erb',
    'app/views/admin/births/index.html.erb',
    'app/views/admin/births/new.html.erb',
    'app/views/births',
    'app/views/births/_recent_births.html.erb',
    'app/views/births/index.html.erb',
    'app/views/births/index.rss.builder',
    'app/views/births/show.html.erb',
    'config',
    'config/locales',
    'config/locales/en.yml',
    'config/routes.rb',
    'lib',
    'lib/gemspec.rb',
    'lib/generators',
    'lib/generators/refinerycms_cradle_roll',
    'lib/generators/refinerycms_cradle_roll/templates',
    'lib/generators/refinerycms_cradle_roll/templates/db',
    'lib/generators/refinerycms_cradle_roll/templates/db/migrate',
    'lib/generators/refinerycms_cradle_roll/templates/db/migrate/migration_number_create_singular_name.rb',
    'lib/generators/refinerycms_cradle_roll/templates/db/seeds',
    'lib/generators/refinerycms_cradle_roll/templates/db/seeds/seed.rb',
    'lib/generators/refinerycms_cradle_roll_generator.rb',
    'lib/births.rb',
    'lib/refinerycms-cradle-roll.rb',
    'license.md',
    'readme.md'
  ]
  s.test_files        = [
  ]
end
