def reek_report
  `reek app test spec | tail -n1`
end

def warnings
  reek_report.match(/\d+/)
end
