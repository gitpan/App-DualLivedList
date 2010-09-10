#!/usr/bin/perl

use strict;
use warnings;
use Test::Script;
use Test::More tests => 4; 

use Memoize;
memoize('script_compiles', NORMALIZER => 'script_compiles');
memoize('script_runs', NORMALIZER => 'script_runs');

script_compiles( 'blib/script/dual-lived' ); 
script_runs( 'blib/script/dual-lived'  ); 
