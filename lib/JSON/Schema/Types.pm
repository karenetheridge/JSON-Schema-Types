use strict;
use warnings;
package JSON::Schema::Types;
# vim: set ts=8 sts=2 sw=2 tw=100 et :
# ABSTRACT: Create Type::Tiny types defined by JSON Schemas
# KEYWORDS: JSON Schema types

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

sub new ($class) {
  die 'not yet implemented';
}

sub json_schema_type ($class) {
  die 'not yet implemented';
}

1;
__END__

=pod

=for :header
=for stopwords schema subschema

=head1 SYNOPSIS

  use JSON::Schema::Types ':all';

  my $my_type = json_schema_type({
    type => 'object',
    properties => {
      foo => { type => 'integer' },
      bar => { type => 'string' },
    }
  });

  my $second_type = JSON::Schema::Types->new(
    validate_formats => 0,
    schema => false,
  );

  # prints 'data is valid'
  say 'data is ', $my_type->check({ foo => 1, bar => 'hello' }) ? 'valid' : 'invalid';

  # prints 'data is invalid'
  say 'data is ', $second_type->check(1) ? 'valid' : 'invalid' ? 'valid' : 'invalid';

=head1 DESCRIPTION

Generates L<Type::Tiny> types for you that use a JSON Schema to validate the data.

=head1 FUNCTIONS/METHODS

=head2 json_schema_type

Creates a type value for you using the provided schema. No custom behaviour is available.

=head2 new

Creates a type value for you, with customization options. Options available are:

=for :list
* schema: Required. Contains the JSON Schema to use.
* max_traversal_depth: Optional. more later.
* scalarref_booleans: Optional. more later.
* short_circuit: Optional. Whenever possible, each subschema will end evaluation as soon as a true
  or false result can be determined. When enabled, This obviously does not affect the overall
  valid/invalid result, but the error list will be incomplete.
* specification_version: Optional. Defaults to the latest release version of the JSON Schema
  specification, currently C<draft2020-12>.
* stringy_numbers: Optional. more later.
* validate_formats: Optional. Enables or disables format validation. Defaults to C<true>.

=head1 SEE ALSO

=for :list
* L<https://json-schema.org>
* L<Understanding JSON Schema|https://json-schema.org/understanding-json-schema>: tutorial-focused documentation
* L<JSON::Schema::Modern>
* L<JSON::Schema::Tiny>

=cut
