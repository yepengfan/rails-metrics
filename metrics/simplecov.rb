require 'json'

def report_coverage
  coverage_json = read_json
  calculate_coverage coverage_json
end

def read_json
  file = File.read('coverage/coverage.json')
  JSON.parse(file)
end

def calculate_coverage coverage_json
  total_lines = 0
  lines_covered = 0

  coverage_json['files'].each do |file|
    total_lines += file['lines_of_code']
    lines_covered += file['covered_lines']
  end

  (lines_covered / total_lines.to_f).round(4)
end
