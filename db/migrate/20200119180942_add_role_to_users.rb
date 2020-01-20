class AddRoleToUsers < ActiveRecord::Migration[5.1]

  def change
    add_column :users, :role, "ENUM('admin', 'writer', 'user') DEFAULT 'user'"
  end

  #def up
  #  execute <<-SQL
  #      ALTER TABLE users ADD role enum('admin', 'writer', 'user');
  #  SQL
  #end
  #
  #def down
  #  remove_column :users, :status
  #end

  #def change
  #  add_column :users, :role, :string
  #end
end
