R /^-time/ do `time /t`.encode("UTF-8", "GBK", replace: '?', invalid: :replace, undef: :replace, fallback: '?').chomp("\n") + " " + azogi_text(1) end
