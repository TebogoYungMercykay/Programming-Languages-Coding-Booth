#!/usr/bin/perl
use strict;
use warnings;

if (@ARGV != 2) {
    print "Usage: perl script.pl <filename> <word>\n";
    exit(1);
}

my ($filename, $word) = @ARGV;

if (-e $filename) {
    open my $fh, '<', $filename or die "Could not open '$filename' $!\n";
    my $fileContent = do { local $/; <$fh> };
    close $fh;

    $fileContent = lc $fileContent;
    $fileContent =~ s/[^a-z]//g;

    my $reversedContent = reverse $fileContent;

    my $count = () = $reversedContent =~ /$word/g;

    print "Matches: $count\n";
} else {
    print "File not found.\n";
}