#!/usr/bin/perl

use strict;
use warnings;

use vars qw($o);

BEGIN {
  use Test::Inter;
  $o = new Test::Inter;
}

BEGIN { $o->use_ok('5.015','forbid'); }
BEGIN { $o->use_ok('Config','xxxx','forbid'); }
BEGIN { $o->use_ok('Storable',7.01,'dclone','forbid'); }

$o->done_testing();

