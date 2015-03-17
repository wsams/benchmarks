require 'benchmark'

class Benchmarks

    attr_accessor :test_php
    attr_accessor :test_javascript
    attr_accessor :test_ruby
    attr_accessor :test_java

    attr_accessor :green
    attr_accessor :orange

    attr_accessor :colored_output

    attr_accessor :run_benchmark_x_times

    def initialize
        @test_php = TRUE
        @test_javascript = TRUE
        @test_ruby = TRUE
        @test_java = TRUE
        @green = "38;05;28"
        @orange = "38;05;196"
        @colored_output = TRUE
        @run_benchmark_x_times = 10
    end

    def print_colored_message(message, color="0")
        if @colored_output
            puts "\n\e[#{color}m#{message}\e[0m\n"
        else
            puts "\n#{message}\n"
        end
    end

    def benchmark_command(command)
        puts Benchmark.measure {
            @run_benchmark_x_times.times do
                run_command(command)
            end
        }
    end

    def run_command(command)
        `#{command}`
    end

    def run_tests(tests)
        tests.values.each do |test|
            print_colored_message(test[:message], @green)
            if test.has_key?(:setup_command)
                run_command(test[:setup_command])
            end
            benchmark_command(test[:command])
        end
    end

end
