class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|

      t.string :username
      t.string :specialty
      t.string :email
      t.string :password_digest
      t.integer :rating

      t.timestamps
    end
  end
end
