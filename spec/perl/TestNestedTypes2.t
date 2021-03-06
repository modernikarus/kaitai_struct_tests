package spec::perl::TestNestedTypes2;

use strict;
use warnings;
use base qw(Test::Class);
use Test::More;
use NestedTypes2;

sub test_nested_types2: Test(7) {
    my $r = NestedTypes2->from_file('src/fixed_struct.bin');

    is($r->one()->typed_at_root()->value_b(), 80, 'Equals');

    is($r->one()->typed_here1()->value_c(), 65, 'Equals');

    is($r->one()->typed_here1()->typed_here()->value_d(), 67, 'Equals');
    is($r->one()->typed_here1()->typed_parent()->value_cc(), 75, 'Equals');
    is($r->one()->typed_here1()->typed_root()->value_b(), 45, 'Equals');

    is($r->one()->typed_here2()->value_cc(), 49, 'Equals');

    is($r->two()->value_b(), -1, 'Equals');
}

Test::Class->runtests;
