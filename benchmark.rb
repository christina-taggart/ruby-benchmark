def benchmark
  start_time = Time.now
  yield
  end_time = Time.now
  puts "#{start_time} \n #{end_time}"
  running_time = start_time - end_time
end

# Be careful, pasting this into IRB will take a long time to print.
# It's a loooong string. :)
long_string = "apple"*100000000

running_time = benchmark { long_string.reverse }

puts "string.reverse took #{running_time.to_s[1..-1]} seconds to run"

