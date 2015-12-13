def rubocop_report
  `rubocop app test spec | tail -n1`
end

def file_inspected
  rubocop_report.match(/\d+ files inspected/).to_s.match(/\d+/)
end

def offenced_detected
  rubocop_report.match(/\d+ offenses detected/).to_s.match(/\d+/)
end
