R /^-time/ do 
  date = `date /t`.encode("UTF-8", "GBK", replace: '?', invalid: :replace, undef: :replace, fallback: '?').chomp("\n")
  time = `time /t`.encode("UTF-8", "GBK", replace: '?', invalid: :replace, undef: :replace, fallback: '?').chomp("\n")
  weather = %w[阴 晴 雨 雪 大风 霾 以太风]
  "#{date} #{time} 天气 #{weather.sample}"
end


