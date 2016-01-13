use utf8;
package Bio::Sequencescape::Schema::Result::LibraryTube;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Bio::Sequencescape::Schema::Result::LibraryTube

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=item * L<DBIx::Class::TimeStamp>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime", "TimeStamp");

=head1 TABLE: C<library_tubes>

=cut

__PACKAGE__->table("library_tubes");

=head1 ACCESSORS

=head2 uuid

  data_type: 'binary'
  is_nullable: 0
  size: 16

=head2 internal_id

  data_type: 'integer'
  is_nullable: 0

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 barcode

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 barcode_prefix

  data_type: 'varchar'
  is_nullable: 1
  size: 2

=head2 closed

  data_type: 'tinyint'
  is_nullable: 1

=head2 state

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 two_dimensional_barcode

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 sample_uuid

  data_type: 'binary'
  is_nullable: 1
  size: 16

=head2 sample_internal_id

  data_type: 'integer'
  is_nullable: 1

=head2 volume

  data_type: 'decimal'
  is_nullable: 1
  size: [10,2]

=head2 concentration

  data_type: 'decimal'
  is_nullable: 1
  size: [18,2]

=head2 tag_uuid

  data_type: 'binary'
  is_nullable: 1
  size: 16

=head2 tag_internal_id

  data_type: 'integer'
  is_nullable: 1

=head2 expected_sequence

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 tag_map_id

  data_type: 'integer'
  is_nullable: 1

=head2 tag_group_name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 tag_group_uuid

  data_type: 'binary'
  is_nullable: 1
  size: 16

=head2 tag_group_internal_id

  data_type: 'integer'
  is_nullable: 1

=head2 source_request_internal_id

  data_type: 'integer'
  is_nullable: 1

=head2 source_request_uuid

  data_type: 'binary'
  is_nullable: 1
  size: 16

=head2 library_type

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 fragment_size_required_from

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 fragment_size_required_to

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 sample_name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 is_current

  data_type: 'tinyint'
  is_nullable: 0

=head2 scanned_in_date

  data_type: 'date'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 checked_at

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 last_updated

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 created

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 public_name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 inserted_at

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 deleted_at

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 current_from

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 0

=head2 current_to

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "uuid",
  { data_type => "binary", is_nullable => 0, size => 16 },
  "internal_id",
  { data_type => "integer", is_nullable => 0 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "barcode",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "barcode_prefix",
  { data_type => "varchar", is_nullable => 1, size => 2 },
  "closed",
  { data_type => "tinyint", is_nullable => 1 },
  "state",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "two_dimensional_barcode",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "sample_uuid",
  { data_type => "binary", is_nullable => 1, size => 16 },
  "sample_internal_id",
  { data_type => "integer", is_nullable => 1 },
  "volume",
  { data_type => "decimal", is_nullable => 1, size => [10, 2] },
  "concentration",
  { data_type => "decimal", is_nullable => 1, size => [18, 2] },
  "tag_uuid",
  { data_type => "binary", is_nullable => 1, size => 16 },
  "tag_internal_id",
  { data_type => "integer", is_nullable => 1 },
  "expected_sequence",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "tag_map_id",
  { data_type => "integer", is_nullable => 1 },
  "tag_group_name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "tag_group_uuid",
  { data_type => "binary", is_nullable => 1, size => 16 },
  "tag_group_internal_id",
  { data_type => "integer", is_nullable => 1 },
  "source_request_internal_id",
  { data_type => "integer", is_nullable => 1 },
  "source_request_uuid",
  { data_type => "binary", is_nullable => 1, size => 16 },
  "library_type",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "fragment_size_required_from",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "fragment_size_required_to",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "sample_name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "is_current",
  { data_type => "tinyint", is_nullable => 0 },
  "scanned_in_date",
  { data_type => "date", datetime_undef_if_invalid => 1, is_nullable => 1 },
  "checked_at",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "last_updated",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "created",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "public_name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "inserted_at",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "deleted_at",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "current_from",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 0,
  },
  "current_to",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<uuid_and_current_from_and_current_to_idx>

=over 4

=item * L</uuid>

=item * L</current_from>

=item * L</current_to>

=back

=cut

__PACKAGE__->add_unique_constraint(
  "uuid_and_current_from_and_current_to_idx",
  ["uuid", "current_from", "current_to"],
);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2016-01-07 16:54:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:XPpHUDtrqAKOsUJ0ngaTSw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
