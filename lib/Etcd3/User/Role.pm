use utf8;
package Etcd3::User::Role;

use strict;
use warnings;

use Moo;
use Types::Standard qw(Str Int Bool HashRef ArrayRef);

with 'Etcd3::Role::Actions';

use namespace::clean;

=head1 NAME

Etcd3::User::Role

=cut

our $VERSION = '0.005';

=head1 DESCRIPTION

=cut

=head2 endpoint

=cut

has endpoint => (
    is       => 'ro',
    isa      => Str,
);

=head2 user

name of user

=cut

has user => (
    is       => 'ro',
    isa      => Str,
);

=head2 name

name of user

=cut

has name => (
    is       => 'ro',
    isa      => Str,
);

=head2 role

name of role

=cut

has role => (
    is       => 'ro',
    isa      => Str,
);

=head2 grant

=cut

sub grant {
    my $self = shift;
    $self->{endpoint} = '/auth/user/grant';
    $self->request;
    return $self;
}

=head2 revoke

=cut

sub revoke {
    my $self = shift;
    $self->{endpoint} = '/auth/user/revoke';
    $self->request;
    return $self;
}

1;
