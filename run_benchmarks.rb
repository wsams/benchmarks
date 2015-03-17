require 'benchmark'

# Configuration
test_php = true
test_javascript = TRUE
test_ruby = TRUE
test_java = TRUE

green = "38;05;28"
orange = "38;05;196"

msg_math = "Testing simple math and trigonometric functions."
msg_concat = "Testing concatenation within a loop."
msg_random = "Testing random number generation."

@colored_output = TRUE
# Configuration End

def print_colored_message(message, color="0")
    if @colored_output
        puts "\n\e[#{color}m#{message}\e[0m\n"
    else
        puts "\n#{message}\n"
    end
end

if test_php
    print_colored_message("Testing PHP with version " + %x(php -version), orange);

    print_colored_message(msg_math, green)
    puts Benchmark.measure {
        10.times do |x|
            %x(php php/math.php)
        end
    }

    print_colored_message(msg_concat, green)
    puts Benchmark.measure {
        10.times do |x|
            %x(php php/concat.php)
        end
    }

    print_colored_message(msg_random, green)
    puts Benchmark.measure {
        10.times do |x|
            %x(php php/random.php)
        end
    }
end

if test_javascript
    print_colored_message("Testing JavaScript with Node.js version " + %x(node --version), orange);

    print_colored_message(msg_math, green)
    puts Benchmark.measure {
        10.times do |x|
            %x(node js/math.js)
        end
    }

    print_colored_message(msg_concat, green)
    puts Benchmark.measure {
        10.times do |x|
            %x(node js/concat.js)
        end
    }

    print_colored_message(msg_random, green)
    puts Benchmark.measure {
        10.times do |x|
            %x(node js/random.js)
        end
    }
end

if test_ruby
    print_colored_message("Testing Ruby with version " + %x(ruby --version), orange);

    print_colored_message(msg_math, green)
    puts Benchmark.measure {
        10.times do |x|
            %x(ruby ruby/math.rb)
        end
    }

    print_colored_message(msg_concat, green)
    puts Benchmark.measure {
        10.times do |x|
            %x(ruby ruby/concat.rb)
        end
    }

    print_colored_message(msg_random, green)
    puts Benchmark.measure {
        10.times do |x|
            %x(ruby ruby/random.rb)
        end
    }
end

if test_java
    puts "\n\e[38;05;196mTesting Java with version " + %x(java -version) + "\e[0m\n"

    print_colored_message(msg_math, green)
    %x(javac java/MathTest.java)
    puts Benchmark.measure {
        10.times do |x|
            %x(java -cp java MathTest)
        end
    }

    print_colored_message(msg_concat, green)
    %x(javac java/Concat.java)
    puts Benchmark.measure {
        10.times do |x|
            %x(java -cp java Concat)
        end
    }

    print_colored_message(msg_random, green)
    %x(javac java/RandomTest.java)
    puts Benchmark.measure {
        10.times do |x|
            %x(java -cp java RandomTest)
        end
    }
end
