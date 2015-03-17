benchmarks
==========
This is a project to test various benchmarks for a number of languages. Currently the tested languages are JavaScript (via Node.js), Ruby, PHP, and Java. The goal of this project is to create a general framework in Ruby to benchmark various programming languages.

Dependencies
============
In order to run these tests you must have `node`, `ruby`, `php`, `java`, and `javac` on your `PATH`. However you may disable any of the languages. Edit the boolean values in the configuration section of `run_benchmarks.rb` at the top of the file.

By default colored output is enabled. For colored output to work it relies on BASH colors. If you're not running in a BASH environment you will want to set `@colored_output` to `FALSE` in the configuration section of `run_benchmarks.rb` at the top of the file.

Running benchmarks
==================
To run the benchmark suite, execute,

    ruby run_benchmarks.rb

Benchmarking is calculated using the Ruby `Benchmark` module.

(http://ruby-doc.org/stdlib-1.9.3/libdoc/benchmark/rdoc/Benchmark.html)[http://ruby-doc.org/stdlib-1.9.3/libdoc/benchmark/rdoc/Benchmark.html]
