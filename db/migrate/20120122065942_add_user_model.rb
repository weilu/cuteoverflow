class AddUserModel < ActiveRecord::Migration
  def change
    create_table(:stack_users, id: false) do |t|
      t.integer :remote_id, primary: true
      t.string :display_name
      t.integer :reputation

      t.timestamps
    end
  end
end
