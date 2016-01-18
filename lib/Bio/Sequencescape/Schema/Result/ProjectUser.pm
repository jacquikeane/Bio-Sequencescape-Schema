use utf8;
package Bio::Sequencescape::Schema::Result::ProjectUser;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Bio::Sequencescape::Schema::Result::ProjectUser

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<project_users>

=cut

__PACKAGE__->table("project_users");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 project_internal_id

  data_type: 'integer'
  is_nullable: 0

=head2 project_uuid

  data_type: 'binary'
  is_nullable: 0
  size: 16

=head2 role

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 login

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 email

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "project_internal_id",
  { data_type => "integer", is_nullable => 0 },
  "project_uuid",
  { data_type => "binary", is_nullable => 0, size => 16 },
  "role",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "login",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "email",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07042 @ 2016-01-18 11:14:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:6cQvBEX2CWUlH6xhqSZjGQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
