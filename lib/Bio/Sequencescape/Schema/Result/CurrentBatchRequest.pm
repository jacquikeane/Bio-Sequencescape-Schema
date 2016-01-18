use utf8;
package Bio::Sequencescape::Schema::Result::CurrentBatchRequest;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Bio::Sequencescape::Schema::Result::CurrentBatchRequest

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<current_batch_requests>

=cut

__PACKAGE__->table("current_batch_requests");

=head1 ACCESSORS

=head2 uuid

  data_type: 'binary'
  is_nullable: 0
  size: 16

=head2 internal_id

  data_type: 'integer'
  is_nullable: 0

=head2 batch_uuid

  data_type: 'binary'
  is_nullable: 1
  size: 16

=head2 batch_internal_id

  data_type: 'integer'
  is_nullable: 1

=head2 request_uuid

  data_type: 'binary'
  is_nullable: 1
  size: 16

=head2 request_internal_id

  data_type: 'integer'
  is_nullable: 1

=head2 request_type

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

=head2 source_asset_name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 target_asset_uuid

  data_type: 'binary'
  is_nullable: 1
  size: 16

=head2 target_asset_internal_id

  data_type: 'integer'
  is_nullable: 1

=head2 target_asset_name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

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
  "batch_uuid",
  { data_type => "binary", is_nullable => 1, size => 16 },
  "batch_internal_id",
  { data_type => "integer", is_nullable => 1 },
  "request_uuid",
  { data_type => "binary", is_nullable => 1, size => 16 },
  "request_internal_id",
  { data_type => "integer", is_nullable => 1 },
  "request_type",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "source_asset_uuid",
  { data_type => "binary", is_nullable => 1, size => 16 },
  "source_asset_internal_id",
  { data_type => "integer", is_nullable => 1 },
  "source_asset_name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "target_asset_uuid",
  { data_type => "binary", is_nullable => 1, size => 16 },
  "target_asset_internal_id",
  { data_type => "integer", is_nullable => 1 },
  "target_asset_name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
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


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2016-01-18 11:14:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:GRtD7KIwy3oDFKoVlHpTHw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
