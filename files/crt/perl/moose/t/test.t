#!/usr/bin/perl

use strict;
use warnings;

use Test::More;

use Time::Piece;

BEGIN {
    use_ok 'MyClass';
}

my $my_object = MyClass->new({
  hotel_name => 'Holiday',
  street     => 'Baker Street',
  guest_name => 'Sherlock Holmes',
});
ok($my_object, 'Got an object');
isa_ok($my_object, 'MyClass');

my $now = localtime;
$my_object->booked_date($now->date);

is($my_object->hotel_name, 'Holiday', 'Correct hotel name');
is($my_object->street, 'Baker Street', 'Correct street name');
is($my_object->guest_name, 'Sherlock Holmes', 'Correct guest name');
is($my_object->booked_date, $now->date.'T00:00:00', 'Correct date');

done_testing;

