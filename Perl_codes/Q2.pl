#!/bin/perl
use strict;
use warnings;

print "enter the temperature you want to check: ";
my $input = <STDIN>;
chomp $input;
my $cel;
my $fer;
my @in = split / /, $input;
if( $in[1] eq 'F' || $in[1] eq 'f' ) {
	$cel = int(( $in[0] - 32) * 5/9);
	print "$input = $cel C \n";
} elsif( $in[1] eq 'C' || $in[1] eq 'c' ) {
	$fer = int(( 9 * $in[0]/5) + 32);
	print "$input = $fer F \n";
} else {
	die "Inappropriate temperature measurement";
}

