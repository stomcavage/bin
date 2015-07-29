#!/usr/bin/perl -w

use strict;

my $BREW     = '/usr/local/bin/brew';
my $NOTIFIER = '/usr/local/bin/terminal-notifier';

`$BREW update 2>&1 | /dev/null` or die "Unable to update brew: $!\n";

my $outdated = `$BREW outdated --quiet`;

my $title = '';
my $message = '';

if (length $outdated) {
  $title   = "Homebrew Update(s) Available"; 
  $message = "The following formulae are outdated: $outdated";
}
else {
  $title   = "No Homebrew Updates Available";
  $message = "No updates available for any homebrew packages.";
}

`$NOTIFIER -sender com.apple.Terminal -title "$title" -message "$message"` 
