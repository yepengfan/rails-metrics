require_relative './rubocop.rb'
require_relative './reek.rb'
require_relative './flog.rb'
require_relative './brakeman.rb'

brakeman_report

puts "file inspected: #{file_inspected}"
puts "offences detected: #{offences_detected}"
puts "warnings: #{warnings}"
puts "flog total: #{flog_total}"
puts "flog method average: #{flog_method_average}"
puts "flog method total: #{flog_method_total}"

puts "controllers: #{controllers}"
puts "models: #{models}"
puts "templates: #{templates}"
puts "errors: #{errors}"
puts "security warnings: #{security_warnings}"
