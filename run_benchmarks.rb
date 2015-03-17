require 'benchmark'

msg_math = "Testing simple math and trigonometric functions.\n"
msg_concat = "Testing concatenation within a loop.\n"
msg_random = "Testing random number generation.\n"

puts "Testing PHP with version " + %x(php -version) + "\n"

puts msg_math
puts Benchmark.measure {
    10.times do |x|
        %x(php php/math.php)
    end
}

puts msg_concat
puts Benchmark.measure {
    10.times do |x|
        %x(php php/concat.php)
    end
}

puts msg_random
puts Benchmark.measure {
    10.times do |x|
        %x(php php/random.php)
    end
}

puts "\nTesting JavaScript with Node.js version " + %x(node --version) + "\n"

puts msg_math
puts Benchmark.measure {
    10.times do |x|
        %x(node js/math.js)
    end
}

puts msg_concat
puts Benchmark.measure {
    10.times do |x|
        %x(node js/concat.js)
    end
}

puts msg_random
puts Benchmark.measure {
    10.times do |x|
        %x(node js/random.js)
    end
}

puts "\nTesting Ruby with version " + %x(ruby --version) + "\n"

puts msg_math
puts Benchmark.measure {
    10.times do |x|
        %x(ruby ruby/math.rb)
    end
}

puts msg_concat
puts Benchmark.measure {
    10.times do |x|
        %x(ruby ruby/concat.rb)
    end
}

puts msg_random
puts Benchmark.measure {
    10.times do |x|
        %x(ruby ruby/random.rb)
    end
}
