# Facon is a mocking library in the spirit of the Bacon spec library. Small,
# compact, and works with Bacon.
module Facon
end

unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

Motion::Project::App.setup do |app|
  app.development do
    files = []
    files << 'motion-facon/mockable'
    files << 'motion-facon/spec_helpers'
    files << 'motion-facon/version'
    files << 'motion-facon/error_generator'
    files << 'motion-facon/expectation'
    files << 'motion-facon/baconize'
    files << 'motion-facon/mock'
    files << 'motion-facon/proxy'



    files.each do |file|
      app.files.unshift "lib/#{file}.rb"
    end

    app.detect_dependencies = true
  end
end