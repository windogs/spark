#!/usr/bin/env ruby

ticks=%w(▁ ▂ ▃ ▄ ▅ ▆ ▇ █)
list=(STDIN.tty? ? ARGV : STDIN.read.split(/\s+/)).map!(&:to_f)
min,max=list.minmax
per=(max-min)/ticks.size

puts list.map { |e| (e==max)?ticks[-1]:ticks[((e-min)/per).floor] }.join
