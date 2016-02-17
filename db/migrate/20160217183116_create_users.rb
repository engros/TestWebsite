class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end

=begin
 A method called change accepts a block called create_table with table name :users.
 This table of users uses the block variable of t object to create name and email with
 accessor attributes (get;set). t.timestamps  is a special command that creates
 two magic columns called created_at and updated_at, which are timestamps that
 automatically record when a given user is created and updated.

 The naming convention is a model (singular User) creates a database full of :users.

 Use rake db:migrate to run this migration file to update the database. The file schema.rb
 will then be automatically updated since that file reflects the current state of the database.

 Migrations are reversible with rake db:rollback (which is like drop table).

 In the case of an irreversible migration, such as one to remove a database column,
 it is necessary to define separate up and down methods in place of the single change method.
 Read about migrations in the Rails Guides for more information.
=end