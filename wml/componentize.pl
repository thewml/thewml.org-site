#!/usr/bin/perl

use strict;
use warnings;

my $fn = shift(@ARGV);
$fn =~ s!^./!!;
my @args = (split(m!/!, $fn));
for(my $n=0;$n<@args;$n++)
{
print join("/", @args[0 .. $n]), "\n";
}
