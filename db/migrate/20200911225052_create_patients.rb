class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :username
      t.string :password_digest
      t.string :email 
      t.integer :height
      t.integer :weight
      t.string :conditions
      t.integer :age

      t.timestamps
    end
  end
end
