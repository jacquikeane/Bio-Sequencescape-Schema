use utf8;
package Bio::Sequencescape::Schema::Result::Order;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Bio::Sequencescape::Schema::Result::Order

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<orders>

=cut

__PACKAGE__->table("orders");

=head1 ACCESSORS

=head2 uuid

  data_type: 'binary'
  is_nullable: 0
  size: 16

=head2 internal_id

  data_type: 'integer'
  is_nullable: 0

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

=head2 created_by

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 template_name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 study_name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 study_uuid

  data_type: 'binary'
  is_nullable: 1
  size: 16

=head2 project_name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 project_uuid

  data_type: 'binary'
  is_nullable: 1
  size: 16

=head2 comments

  data_type: 'text'
  is_nullable: 1

=head2 inserted_at

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 read_length

  data_type: 'integer'
  is_nullable: 1

=head2 fragment_size_required_from

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 fragment_size_required_to

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 library_type

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 sequencing_type

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 insert_size

  data_type: 'integer'
  is_nullable: 1

=head2 number_of_lanes

  data_type: 'integer'
  is_nullable: 1

=head2 submission_uuid

  data_type: 'binary'
  is_nullable: 1
  size: 16

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
  "created_by",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "template_name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "study_name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "study_uuid",
  { data_type => "binary", is_nullable => 1, size => 16 },
  "project_name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "project_uuid",
  { data_type => "binary", is_nullable => 1, size => 16 },
  "comments",
  { data_type => "text", is_nullable => 1 },
  "inserted_at",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "read_length",
  { data_type => "integer", is_nullable => 1 },
  "fragment_size_required_from",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "fragment_size_required_to",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "library_type",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "sequencing_type",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "insert_size",
  { data_type => "integer", is_nullable => 1 },
  "number_of_lanes",
  { data_type => "integer", is_nullable => 1 },
  "submission_uuid",
  { data_type => "binary", is_nullable => 1, size => 16 },
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


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2016-01-18 11:14:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:w7V4RlybWVqUsKqmwiXYCw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
