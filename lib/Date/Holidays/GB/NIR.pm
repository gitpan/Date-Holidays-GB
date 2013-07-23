package Date::Holidays::GB::NIR;

our $VERSION = '0.003'; # VERSION

# ABSTRACT: Date::Holidays class for GB-NIR (Northern Ireland)


use strict;
use warnings;

use Date::Holidays::GB;

sub holidays {
    my %args
        = $_[0] =~ m/\D/
        ? @_
        : ( year => $_[0] );

    return Date::Holidays::GB::holidays( %args, regions => [ 'NIR' ] );
}

sub is_holiday {
    my %args
        = $_[0] =~ m/\D/
        ? @_
        : ( year => $_[0], month => $_[1], day => $_[2] );

    return Date::Holidays::GB::is_holiday( %args, regions => [ 'NIR' ] );
}

1;

__END__

=pod

=encoding utf-8

=head1 NAME

Date::Holidays::GB::NIR - Date::Holidays class for GB-NIR (Northern Ireland)

=head1 VERSION

version 0.003

=head1 SYNOPSIS

    use Date::Holidays::GB::NIR qw/ holidays is_holiday /;
    
    # All holidays for Northern Ireland
    my $holidays = holidays( year => 2013 );
    
    if (is_holiday( year => 2013, month => 12, day => 25, ) {
            print "No work today!";
    }

=head1 AUTHOR

Michael Jemmeson <mjemmeson@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Michael Jemmeson.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
