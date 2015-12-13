require 'json'

def brakeman_report
  `brakeman -o metrics/brakeman_report.json`
end

def brakeman_json
  file = File.read('metrics/brakeman_report.json')
  JSON.parse(file)
end

def controllers
  brakeman_json["scan_info"]["number_of_controllers"]
end

def models
  brakeman_json["scan_info"]["number_of_models"]
end

def templates
  brakeman_json["scan_info"]["number_of_templates"]
end

def errors
  brakeman_json["errors"].size
end

def security_warnings
  brakeman_json["warnings"].size
end
