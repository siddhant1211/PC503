<<'#';
Write a Perl script to analyze another Perl script.
As part of pre-analysis validations, your script should check if the specified script file:
has an acceptable file extension (defined below); and
exists; and
is a readable text file; and
is not empty.
Acceptable file extensions are (case sensitive):
.pl
.pm
Your script should display the following error message and quit gracefully if the specified file
failed any one (or more) of the analysis validations:
Error: unable to analyse the specified file.
                                -Siddhant Gupta(202011067)
#

#!/bin/perl

$file = $ARGV[0];

@file_s = split('\.', $file);


if ((($file_s[-1] == 'pl') || ($file_s[-1] == 'pm')) && (-e $file) && (-r $file) ) {
	unless (-z $file) {
		print "Yes\n";
	} else  {
		die "Error: unable to analyse the specified file.\n"
	}
} else {
	die "Error: unable to analyse the specified file.\n"
}
