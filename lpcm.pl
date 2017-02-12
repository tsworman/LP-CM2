#!/usr/bin/perl
####
#Lurking Place Content Management System 2.0
#
#Tyler Worman (tsworman@novaslp.net)
#Last Update 2/11/2017
#
#
#Purpose
#Enable themeing of plain text html files and dynamic content.
#
#Output pages to text and enable easy deployment via RSync

$body = '';
$header = '';
$footer = '';
$input = $ARGV[0];

open(DAT, "./" . $input) || die ("Could not open Header!!");
while (<DAT>) {
    $body = $body . $_;
}

open(DAT, "./Template/header.html") || die ("Could not open Header!!");
while (<DAT>) {
    $header = $header . $_;
}

open(DAT, "./Template/footer.html") || die ("Could not open Footer!!");
while (<DAT>) {
    $footer = $footer . $_;
}

open(DAT, "./Template/template.html") || die ("Could not open Template!!");
while (<DAT>) {
    $myTemplate = $myTemplate . $_;
}

#Perform Replacement
$myTemplate =~ s/\[BODY\]/$body/g;
$myTemplate =~ s/\[HEADER\]/$header/g;
$myTemplate =~ s/\[FOOTER\]/$footer/g;

print $myTemplate;

exit 0;
