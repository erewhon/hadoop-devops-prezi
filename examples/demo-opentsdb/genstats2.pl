#!/usr/bin/perl

use Math::Trig;

$now = time;

for $i (($now - 3600*24*7)..$now) {
  print "put some.stat1 $i ", ($i % 3600) / 60, " host=foo\n";
  printf "put some.stat2 $i %.2f host=foo\n", 10 + 5 *sin((($i % 60) / 60.0) * 2 * pi);
}
