class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :author_name, null: false
      t.string :email, uniqueness: true, null: false
      t.string :password_digest, null: false

      t.timestamps null: false
    end
  end
end
