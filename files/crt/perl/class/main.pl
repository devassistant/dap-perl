#!/usr/bin/perl

use strict;
use warnings;
use 5.010;

use Time::Piece;
use MyClass;

my $my_object = MyClass->new( 'Holiday', 'Baker Street', 'Sherlock Holmes');
$my_object->set_booked_date(localtime->strftime('%Y-%m-%d'));

say 'The hotel name is ' . $my_object->get_hotel_name;
say 'The hotel street is ' . $my_object->get_street;
say 'The hotel is booked on the name ' . $my_object->get_guest_name;
say 'Accomodation starts at ' . $my_object->get_booked_date;

