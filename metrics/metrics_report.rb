require_relative './simplecov.rb'
require_relative './rubocop.rb'
require_relative './reek.rb'
require_relative './flog.rb'
require_relative './brakeman.rb'

trigger_simplecov
brakeman_report

def project_metrics
   {
    "code coverage": "#{report_coverage}",
    "file inspected": "#{file_inspected}",
    "offences detected": "#{offences_detected}",
    "warnings": "#{warnings}",
    "flog total": "#{flog_total}",
    "flog method average": "#{flog_method_average}",
    "flog method total": "#{flog_method_total}",
    "controllers": "#{controllers}",
    "models": "#{models}",
    "templates": "#{templates}",
    "errors": "#{errors}",
    "security warnings": "#{security_warnings}"
  }
end
