#!/usr/bin/perl -w

@orig = qw{
	one
	1
	two\ words
	"quoted"
	"quoted pair"
	next
	last
};

$, = '~';
$" = "_";
print @orig, $/;
print "@orig", "\n";

@copy = @orig;

$copy[0] = "c";
$orig[0] = "o";

print @orig, "\n";
print @copy, "\n";

print "\n";