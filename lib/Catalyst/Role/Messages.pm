package Catalyst::Role::Messages;
use Moose::Role;


=head1 SYNOPSIS
    use Catalyst qw/
        ...
    Catalyst::Role::Messages
    /;

    # later...

    package MyApp::Controller::Blargh;
    ...

    sub fnargh : Local {
        my ($self, $c) = @_;
        ## do some form submission stuff
        if( $form_stuff_is_successful ) {
            $c->msg("Successful submission is successful!");
        }
    }

Open up your wrapper and add these lines:
    [% FOR message IN messages -%]
        [% message %]
    [% END -%]

(Add formatting as you please)
=cut

# ABSTRACT: Add "status messages" to your app, easy like!
our $VERSION = '0.01';
sub msg {
    my ($c, $msg) = @_;
    $c->stash->{messages} ||= [];
    push @{$c->stash->{messages}}, $msg if $msg;
}

1;
