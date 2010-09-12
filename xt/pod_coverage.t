#!/usr/bin/perl

use strict;
use warnings;
use Test::Pod::Coverage tests => 1;

pod_coverage_ok( "App::DualLivedList",
                 "App::DualLivedList is covered" );
