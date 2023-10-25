#!/usr/bin/perl
# datetime.pl
use strict;
use warnings;

# Generate HTML to disply the time and Hello World 
# CSIS 400
# Ira Goldstein

# Generate the required HTML starting line
print "Content-Type: text/html \n\n";

# Generate minimal opening tags
print "<html><body>\n";

# Set up the date and time variables
my @time = localtime;
my $min = $time[1];
my $hour = $time[2];
my $day = $time[3];
my $month = $time[4] + 1; # 0=Jan, 11=Dec
my $year = $time[5] + 1900; #$time[5] is years since 1900. 2017 = 117

# Display the text
print "<p>Hello World!</p>";
printf "<p>The date is %d/%d/%d.</p>\n", $month, $day, $year;
printf "<p>The time is now %02d:%02d.</p>\n", $hour, $min;


# Generate the closing tags
print "</body></html>";
