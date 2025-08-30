use strict;
use warnings;
package JSON::Schema::Types;
# vim: set ts=8 sts=2 sw=2 tw=100 et :
# ABSTRACT: ...
# KEYWORDS: ...

our $VERSION = '0.001';

use 5.020;
use strictures 2;
use stable 0.031 'postderef';
use experimental 'signatures';
no autovivification warn => qw(fetch store exists delete);
use if "$]" >= 5.022, experimental => 're_strict';
no if "$]" >= 5.031009, feature => 'indirect';
no if "$]" >= 5.033001, feature => 'multidimensional';
no if "$]" >= 5.033006, feature => 'bareword_filehandles';
no if "$]" >= 5.041009, feature => 'smartmatch';
no feature 'switch';

1;
__END__

=pod

=head1 SYNOPSIS

  use JSON::Schema::Types;

  ...

=head1 DESCRIPTION

...

=head1 FUNCTIONS/METHODS

=head2 foo

...

=head1 ACKNOWLEDGEMENTS

...

=head1 SEE ALSO

=for :list
* L<foo>

=cut
