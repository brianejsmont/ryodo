#!/usr/bin/env ruby
# encoding: utf-8
$: << "../lib"
require "ryodo"
require "public_suffix"
require "perftools"

LOOPS = 5_000

### RYODO NEW SELECT_RULE

PerfTools::CpuProfiler.start("../tmp/perf-ryodo-new") do
  LOOPS.times do
    Ryodo.valid? "www.city.kyoto.jp"
  end
end

### PUBLIC SUFFIXLOOPS

PerfTools::CpuProfiler.start("../tmp/perf-public_suffix") do
  LOOPS.times do
    PublicSuffix.valid? "www.city.kyoto.jp"
  end
end
