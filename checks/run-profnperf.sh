#!/bin/bash
./profiling.rb
CPUPROFILE_REALTIME=1 CPUPROFILE_FREQUENCY=1000 ./performance.rb
pprof.rb --gif ../tmp/perf-ryodo-new > ../tmp/perf-ryodo-new.gif
pprof.rb --gif ../tmp/perf-public_suffix > ../tmp/perf-public_suffix.gif