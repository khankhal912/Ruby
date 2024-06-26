class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.column "first_name", :string :limit => 25
      t.string "last_name", :limit => 25
      t.string "email", :default => '' ,:null => false

      t.timestamps
    end
  end
  # def up
  #   create_table :users do |t|
  #     t.column "first_name", :string :limit => 25
  #     t.string "last_name", :limit => 25
  #     t.string "email", :default => '' ,:null => false

  #     t.timestamps
  #     # t.datetime "created_at"
  #     # t.datetime "updated_at"
  #   end
  # end

  # def down
  #   drop_table :users
  # end
end
