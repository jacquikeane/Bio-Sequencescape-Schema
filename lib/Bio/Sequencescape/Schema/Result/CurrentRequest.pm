use utf8;
package Bio::Sequencescape::Schema::Result::CurrentRequest;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Bio::Sequencescape::Schema::Result::CurrentRequest

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

=head1 TABLE: C<current_requests>

=cut

__PACKAGE__->table("current_requests");

=head1 ACCESSORS

=head2 uuid

  data_type: 'binary'
  is_nullable: 0
  size: 16

=head2 internal_id

  data_type: 'integer'
  is_nullable: 0

=head2 request_type

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 fragment_size_from

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 fragment_size_to

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 read_length

  data_type: 'integer'
  is_nullable: 1

=head2 library_type

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 study_uuid

  data_type: 'binary'
  is_nullable: 1
  size: 16

=head2 study_internal_id

  data_type: 'integer'
  is_nullable: 1

=head2 study_name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 project_uuid

  data_type: 'binary'
  is_nullable: 1
  size: 16

=head2 project_internal_id

  data_type: 'integer'
  is_nullable: 1

=head2 project_name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 source_asset_uuid

  data_type: 'binary'
  is_nullable: 1
  size: 16

=head2 source_asset_internal_id

  data_type: 'integer'
  is_nullable: 1

=head2 source_asset_type

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 source_asset_name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 source_asset_barcode

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 source_asset_barcode_prefix

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 source_asset_state

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 source_asset_closed

  data_type: 'tinyint'
  is_nullable: 1

=head2 source_asset_two_dimensional_barcode

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 source_asset_sample_uuid

  data_type: 'binary'
  is_nullable: 1
  size: 16

=head2 source_asset_sample_internal_id

  data_type: 'integer'
  is_nullable: 1

=head2 target_asset_uuid

  data_type: 'binary'
  is_nullable: 1
  size: 16

=head2 target_asset_internal_id

  data_type: 'integer'
  is_nullable: 1

=head2 target_asset_type

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 target_asset_name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 target_asset_barcode

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 target_asset_barcode_prefix

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 target_asset_state

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 target_asset_closed

  data_type: 'tinyint'
  is_nullable: 1

=head2 target_asset_two_dimensional_barcode

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 target_asset_sample_uuid

  data_type: 'binary'
  is_nullable: 1
  size: 16

=head2 target_asset_sample_internal_id

  data_type: 'integer'
  is_nullable: 1

=head2 is_current

  data_type: 'tinyint'
  is_nullable: 0

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

=head2 state

  data_type: 'varchar'
  is_nullable: 1
  size: 40

=head2 priority

  data_type: 'integer'
  is_nullable: 1

=head2 user

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

=head2 submission_uuid

  data_type: 'binary'
  is_nullable: 1
  size: 16

=head2 submission_internal_id

  data_type: 'integer'
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
  "request_type",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "fragment_size_from",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "fragment_size_to",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "read_length",
  { data_type => "integer", is_nullable => 1 },
  "library_type",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "study_uuid",
  { data_type => "binary", is_nullable => 1, size => 16 },
  "study_internal_id",
  { data_type => "integer", is_nullable => 1 },
  "study_name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "project_uuid",
  { data_type => "binary", is_nullable => 1, size => 16 },
  "project_internal_id",
  { data_type => "integer", is_nullable => 1 },
  "project_name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "source_asset_uuid",
  { data_type => "binary", is_nullable => 1, size => 16 },
  "source_asset_internal_id",
  { data_type => "integer", is_nullable => 1 },
  "source_asset_type",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "source_asset_name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "source_asset_barcode",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "source_asset_barcode_prefix",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "source_asset_state",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "source_asset_closed",
  { data_type => "tinyint", is_nullable => 1 },
  "source_asset_two_dimensional_barcode",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "source_asset_sample_uuid",
  { data_type => "binary", is_nullable => 1, size => 16 },
  "source_asset_sample_internal_id",
  { data_type => "integer", is_nullable => 1 },
  "target_asset_uuid",
  { data_type => "binary", is_nullable => 1, size => 16 },
  "target_asset_internal_id",
  { data_type => "integer", is_nullable => 1 },
  "target_asset_type",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "target_asset_name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "target_asset_barcode",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "target_asset_barcode_prefix",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "target_asset_state",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "target_asset_closed",
  { data_type => "tinyint", is_nullable => 1 },
  "target_asset_two_dimensional_barcode",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "target_asset_sample_uuid",
  { data_type => "binary", is_nullable => 1, size => 16 },
  "target_asset_sample_internal_id",
  { data_type => "integer", is_nullable => 1 },
  "is_current",
  { data_type => "tinyint", is_nullable => 0 },
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
  "state",
  { data_type => "varchar", is_nullable => 1, size => 40 },
  "priority",
  { data_type => "integer", is_nullable => 1 },
  "user",
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
  "submission_uuid",
  { data_type => "binary", is_nullable => 1, size => 16 },
  "submission_internal_id",
  { data_type => "integer", is_nullable => 1 },
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

=head2 C<internal_id_idx>

=over 4

=item * L</internal_id>

=back

=cut

__PACKAGE__->add_unique_constraint("internal_id_idx", ["internal_id"]);

=head2 C<uuid_idx>

=over 4

=item * L</uuid>

=back

=cut

__PACKAGE__->add_unique_constraint("uuid_idx", ["uuid"]);


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2016-01-07 16:54:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:foeZ4kD1G4DuZYj8Sbdcug


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
