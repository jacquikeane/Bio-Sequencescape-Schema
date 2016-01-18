use utf8;
package Bio::Sequencescape::Schema::Result::Batch;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Bio::Sequencescape::Schema::Result::Batch

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<batches>

=cut

__PACKAGE__->table("batches");

=head1 ACCESSORS

=head2 uuid

  data_type: 'binary'
  is_nullable: 0
  size: 16

=head2 internal_id

  data_type: 'integer'
  is_nullable: 0

=head2 created_by

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 assigned_to

  data_type: 'varchar'
  is_nullable: 1
  size: 30

=head2 pipeline_name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 pipeline_uuid

  data_type: 'binary'
  is_nullable: 1
  size: 16

=head2 pipeline_internal_id

  data_type: 'integer'
  is_nullable: 1

=head2 state

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 qc_state

  data_type: 'varchar'
  is_nullable: 1
  size: 50

=head2 production_state

  data_type: 'varchar'
  is_nullable: 1
  size: 50

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
  "created_by",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "assigned_to",
  { data_type => "varchar", is_nullable => 1, size => 30 },
  "pipeline_name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "pipeline_uuid",
  { data_type => "binary", is_nullable => 1, size => 16 },
  "pipeline_internal_id",
  { data_type => "integer", is_nullable => 1 },
  "state",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "qc_state",
  { data_type => "varchar", is_nullable => 1, size => 50 },
  "production_state",
  { data_type => "varchar", is_nullable => 1, size => 50 },
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


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2016-01-18 11:14:24
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:UUjp9RrxfncLu1eQnqz94g


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
