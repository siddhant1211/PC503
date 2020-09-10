<<'#';
Write a program that takes in a temperature (either Celsius or Fahrenheit) and converts it. The
program will know what to convert it to through interpreting the last character in the input string,
which will either be an 'F' (for Fahrenheit) or a 'C' (for Celsius). So, for example if the user were
to input 10C, the program will output 50F (the output should be to the nearest whole integer). If
the end character in the input string is not equivalent to an F or a C, the program should handle
the error appropriately.
				- Siddhant Gupta (202011067)
#

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
  
  
  
  
  
  
  
 
