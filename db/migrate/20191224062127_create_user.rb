class CreateUser < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.index :username, unique: true
      t.string :password_digest, null: false
      t.string :password_salt, null: false
    end
  end
end
