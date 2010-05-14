# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl App-DualLivedList.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test;
BEGIN { plan tests => 1 };
use App::DualLivedList;
ok(1); 

#########################



