use warnings;
use strict;
use Test::More "no_plan";
# use Test::More skip_all => "Not written";
use FindBin qw( $Bin );
use File::Spec;
use Path::Class;
use lib File::Spec->catfile($Bin, '../lib');
use XHTML::Util;

my $data = do { local $/; <DATA> };

{
    my $xu = XHTML::Util->new(\$data);
#    $xu->strip_tags('a[href="/"]');
    $xu->strip_tags('a[href^
="http"]');
    diag($xu);
    ok(1);
}

__DATA__
<a href="http://sedition.com">Sedition.com</a>
<a href="/">Relative Root</a>

