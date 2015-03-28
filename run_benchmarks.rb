require './benchmarks.rb'

benchmarks = Benchmarks.new
benchmarks.test_php = TRUE
benchmarks.test_javascript = TRUE
benchmarks.test_ruby = TRUE
benchmarks.test_java = TRUE
benchmarks.colored_output = TRUE

msg_math = "Testing simple math and trigonometric functions.";
msg_concat = "Testing concatenation within a loop."
msg_random = "Testing random number generation."
msg_file = "Testing file writing."

if benchmarks.test_php
    tests = {
        :math => {
            :message => msg_math,
            :command => "php php/math.php"
        },
        :concat => {
            :message => msg_concat,
            :command => "php php/concat.php"
        },
        :random => {
            :message => msg_random,
            :command => "php php/random.php"
        },
        :file => {
            :message => msg_file,
            :command => "php js/file.php"
        }
    }

    benchmarks.print_colored_message("Testing PHP with version " + %x(php -version), benchmarks.orange);
    benchmarks.run_tests(tests)
end

if benchmarks.test_javascript
    tests = {
        :math => {
            :message => msg_math,
            :command => "node js/math.js"
        },
        :concat => {
            :message => msg_concat,
            :command => "node js/concat.js"
        },
        :random => {
            :message => msg_random,
            :command => "node js/random.js"
        },
        :file => {
            :message => msg_file,
            :command => "node js/file.js"
        }
    }

    benchmarks.print_colored_message("Testing JavaScript with Node.js version " + %x(node --version), benchmarks.orange);
    benchmarks.run_tests(tests)
end

if benchmarks.test_ruby
    tests = {
        :math => {
            :message => msg_math,
            :command => "ruby ruby/math.rb"
        },
        :concat => {
            :message => msg_concat,
            :command => "ruby ruby/concat.rb"
        },
        :random => {
            :message => msg_random,
            :command => "ruby ruby/random.rb"
        },
        :file => {
            :message => msg_file,
            :command => "ruby ruby/file.rb"
        }
    }

    benchmarks.print_colored_message("Testing Ruby with version " + %x(ruby --version), benchmarks.orange);
    benchmarks.run_tests(tests)
end

if benchmarks.test_java
    tests = {
        :math => {
            :message => msg_math,
            :setup_command => "javac java/MathTest.java",
            :command => "java -cp java MathTest"
        },
        :concat => {
            :message => msg_concat,
            :setup_command => "javac java/Concat.java",
            :command => "java -cp java Concat"
        },
        :random => {
            :message => msg_random,
            :setup_command => "javac java/RandomTest.java",
            :command => "java -cp java RandomTest"
        },
        :file => {
            :message => msg_file,
            :setup_command => "javac java/FileTest.java",
            :command => "java -cp java FileTest"
        }
    }

    benchmarks.print_colored_message("Testing Java with version " + %x(java -version), benchmarks.orange);
    benchmarks.run_tests(tests)
end
