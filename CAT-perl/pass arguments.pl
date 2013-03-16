#!/usr/bin/perl

use strict;
use warnings;

if (scalar @ARGV != 3) {
	print "Usage: $0 First Second Third";
	exit;
}

my $first = shift @ARGV;
my $second = shift @ARGV;
my $third = shift @ARGV;

print "first: $first\n";
print "second: $second\n";
print "third: $third\n";
