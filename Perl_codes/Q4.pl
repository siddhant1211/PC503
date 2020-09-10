#!/bin/perl
my $file = $ARGV[0];
open($d,'<',$file) or die $!;
$words_count = ();
while (<$d>) {
	chomp;
	@words = split(' ');
	foreach $word (@words) {
		if(exists $words_count{$word}) {
			$words_count{$word} += 1;
		} else {
			$words_count{$word} = 1;
		}
	}
	
}	  
 
while (($key, $value) = each %words_count) {
	print "$key - $value\n";
}

close(FH);
  
  
  
  
  
  
  
 
