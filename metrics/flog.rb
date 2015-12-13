def flog_report
  `flog app test spec`
end

def flog_total
  flog_report.match(/[0-9]*\.[0-9]*: flog total/).to_s.match(/[0-9]*\.[0-9]*/)
end

def flog_method_average
  flog_report.match(/[0-9]*\.[0-9]*: flog\/method average/).to_s.match(/[0-9]*\.[0-9]*/)
end

def flog_method_total
  flog_report.to_s.lines.count - 3
end
