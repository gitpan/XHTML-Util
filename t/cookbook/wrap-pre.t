use warnings;
use strict;
# use Test::More tests => 3;
use Test::More skip_all => "Not written";
use FindBin qw( $Bin );
use File::Spec;
use Path::Class;
use lib File::Spec->catfile($Bin, '../lib');
use XHTML::Util;

my $data = do { local $/; <DATA> };

{
    my $xu = XHTML::Util->new(\$data);
}

__DATA__
<pre>
The next line is 100 contiguous non-breaking characters.
1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890

The next line 100 characters with space breaks at 10s.
123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 
</pre>
