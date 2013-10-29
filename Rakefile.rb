$:.unshift File.dirname(__FILE__) + 'lib'

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

task :default => :test

desc "Espectativas de la clase fraccion"
task :bin do
  sh "ruby lib/frac_main.rb"
end

desc "Formato documentacion"
task :test do
  sh "rspec -I. test/fraccion_spec.rb --format documentation"
end

desc "Test en formato html"
task :thtml do
  sh "rspec -I. test/fraccion_spec.rb --format html"
end