#!/usr/bin/perl

use strict;
use warnings;
use Test::More;
use Memoize;
memoize('plan', NORMALIZER => 'plan');

eval { require Test::Kwalitee; Test::Kwalitee->import() };
plan( skip_all => 'Test::Kwalitee not installed; skipping' ) if $@;
