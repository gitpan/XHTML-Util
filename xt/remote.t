use warnings;
use strict;
use Test::More tests => 3;
use FindBin qw( $Bin );
use File::Spec;
use Path::Class;
use lib File::Spec->catfile($Bin, '../lib');
use XHTML::Util;
use URI;

{
    my $likely_to_be_there = URI->new("http://google.com");

    ok( my $xu = XHTML::Util->new($likely_to_be_there),
        "XHTML::Util->new google.com" );

    ok( $xu->is_document,
        "Internet document is an internet document" );

    like( $xu, qr/Google/,
          "Oh, hai, Google" );
}

__END__
