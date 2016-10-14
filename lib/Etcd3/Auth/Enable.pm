use utf8;
package Etcd3::Auth::Enable;

use strict;
use warnings;

use Moo;
use Types::Standard qw(Str Int Bool HashRef ArrayRef);
use MIME::Base64;
use JSON;
use Data::Dumper;

with 'Etcd3::Role::Actions';

use namespace::clean;

=head1 NAME

Etcd3:Auth::Enable

=head1 DESCRIPTION

Enable authentication

=head2 endpoint

=cut

has endpoint => (
    is       => 'ro',
    isa      => Str,
    default => '/auth/enable'
);

=head2 json_args

arguments that will be sent to the api

=cut

has json_args => (
    is => 'ro',
    default => '{}',
);

=head2 init

=cut

sub init {
    my ($self)  = @_;
    $self->json_args;
    return $self;
}

1;
