package DBO::Query::RightJoin;

=head1 NAME

DBO::Query::RightJoin - Abstracts a RIGHT OUTER JOIN

=head1 SYNOPSIS

=cut

use strict;
use warnings;
our $VERSION = '$Revision: 1.3 $';

use base qw(DBO::Query::Join);

sub init {
    my $self = shift;
    $self->SUPER::init(@_);
    $self->type('RIGHT');
    return $self;
}


1;
__END__

=head1 DESCRIPTION

A subclass of DBO::Query::Join.

=head1 METHODS

None.

=cut

