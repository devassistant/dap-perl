package MyClass;

use strict;
use warnings;

use Moose;
use Moose::Util::TypeConstraints;
use DateTime::Format::Strptime;

class_type 'DateTime';
coerce 'DateTime'
  => from 'Str'
  => via { DateTime::Format::Strptime->new(
             pattern => '%Y-%m-%d'
           )->parse_datetime($_) };

has hotel_name => (
  is => 'ro',
  isa => 'Str',
);

has street => (
  is => 'ro',
  isa => 'Str',
);

has guest_name => (
  is => 'ro',
  isa => 'Str',
);

has booked_date => (
  is => 'rw',
  isa => 'DateTime',
  coerce => 1,
);

1;
