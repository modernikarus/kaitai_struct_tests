package spec::perl::TestFixedContents;

use strict;
use warnings;
use base qw(Test::Class);
use Test::More;
use FixedContents;

sub test_fixed_contents: Test(0) {
    my $r = FixedContents->from_file('src/fixed_struct.bin');
}

Test::Class->runtests;
