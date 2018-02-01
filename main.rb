R /^-time/ do 
  date = `date /t`.encode("UTF-8", "GBK", replace: '?', invalid: :replace, undef: :replace, fallback: '?').chomp("\n")
  time = `time /t`.encode("UTF-8", "GBK", replace: '?', invalid: :replace, undef: :replace, fallback: '?').chomp("\n")
  weather = %w[阴 晴 雨 雪 大风 霾 以太风]
  "#{date} #{time} 天气 #{weather.sample}\n#{azogi_text(1)}"
end

COMMON_DICT = File.read("./etc/rseg/dict/cedict.zh_CN.utf8").split("\n")
load './gits/testrobot/zone.rb'
R /^-diary/ do
  date = `date /t`.encode("UTF-8", "GBK", replace: '?', invalid: :replace, undef: :replace, fallback: '?').chomp("\n")
  time = `time /t`.encode("UTF-8", "GBK", replace: '?', invalid: :replace, undef: :replace, fallback: '?').chomp("\n")
  weather = %w[阴 晴 雨 雪 大风 霾 以太风]
  zone = ZONES.sample
  "#{date} #{time} #{zone} 天气 #{weather.sample}\n#{COMMON_DICT.select{|x| x.size == 2}.sample}"
end
