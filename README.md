benchmarks
==========
This is a project to benchmark various programming languages. Currently the tested languages are: JavaScript (via Node.js), Ruby, PHP, and Java. The goal of this project is to create a general framework in Ruby to benchmark various programming languages. It does this by benchmarking literal command line commands.

Dependencies
============
In order to run these tests you must have `node`, `ruby`, `php`, `java`, and `javac` on your `PATH`. However you may disable any of the languages. To disable any language update the boolean instance variables on the `benchmarks` object at the top of `run_benchmarks.rb`.

By default colored output is enabled. For colored output to work it relies on BASH colors. If you're not running in a BASH environment you will want to set the instance variable `colored_output` to `FALSE` on the `benchmarks` object at the top of `run_benchmarks.rb`.

Running benchmarks
==================
To run the benchmark suite, execute,

    ruby run_benchmarks.rb

Benchmarking is calculated using the Ruby `Benchmark` module.

(http://ruby-doc.org/stdlib-1.9.3/libdoc/benchmark/rdoc/Benchmark.html)[http://ruby-doc.org/stdlib-1.9.3/libdoc/benchmark/rdoc/Benchmark.html]

Benchmarks example usage
========================

Require the `Benchmarks` class.

    require './benchmarks.rb'

Create a `Benchmarks` instance

    benchmarks = Benchmarks.new

Create a `tests` hash. It should include a message and a command at a minimum.

        tests = {
            :test_one => {
                :message => "Let's test the ls command",
                :command => "ls"
            },
            :another_test => {
                :message => "Grep for 'asdf'",
                :command => "grep asdf *"
            }
        }

Run each command 10 times.

    benchmarks.run_benchmark_x_times = 10

Actually run the tests.

    benchmarks.run_tests(tests)
