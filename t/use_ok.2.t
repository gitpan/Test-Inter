#!/usr/bin/perl

use strict;
use warnings;

use vars qw($o);

BEGIN {
  use Test::Inter;
  $o = new Test::Inter;
}

BEGIN { $o->use_ok('5.015','forbid'); }
BEGIN { $o->use_ok('Config','myconfig'); }
BEGIN { $o->use_ok('Storable',1.01,'dclone'); }

$o->done_testing();

