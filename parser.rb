File.expand_path("../appium.log",  __FILE__)

def collect_test_times(file_path)
  results = []
  if File.exists?(file_path)
    File.open(file_path).each do |line|
      test_result = line.match(/(([0-9]{2})\.([0-9]{1,2}))/)
      results.push(test_result[0].to_f) if test_result
    end
  end

  puts "#{results.sort}"
end

collect_test_times("./appium.log")
