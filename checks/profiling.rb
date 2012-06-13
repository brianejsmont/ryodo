#!/usr/bin/env ruby
# encoding: utf-8
$: << "../lib"
require "ryodo"
require "public_suffix"
require "ruby-prof"

### PROFILING
RubyProf.measure_mode = RubyProf::WALL_TIME

LOOPS = 1_000

### RYODO NEW SELECT_RULE

RubyProf.start
### code
LOOPS.times do Ryodo.parse "www.city.kyoto.jp" end
### /code
resultRyodoX = RubyProf.stop
resultRyodoX.eliminate_methods!([/Integer#times/])

### PUBLIC SUFFIXLOOPS

RubyProf.start
### code
LOOPS.times do PublicSuffix.parse "www.city.kyoto.jp" end
### /code
resultPublicSuffix = RubyProf.stop
resultPublicSuffix.eliminate_methods!([/Integer#times/])

### RESULTS

File.open("../tmp/prof-ryodo-new.html","w") do |fh|
  printer = RubyProf::CallStackPrinter.new(resultRyodoX)
  printer.print(fh)
end

File.open("../tmp/prof-public_suffix.html","w") do |fh|
  printer = RubyProf::CallStackPrinter.new(resultPublicSuffix)
  printer.print(fh)
end
