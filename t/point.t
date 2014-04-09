use strict;
use Test::Simple tests => 3;
use lib '../';
use Point qw( get_distance );

my $point = Point->new(x => 3, y => 2);
my $point2 = Point->new(x => 9, y => 7);
ok($point->x == 3);
ok($point->y == 2);
ok(sprintf("%.4f", $point->get_distance($point2)) == 7.8102);

