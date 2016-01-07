class CreateBarbers < ActiveRecord::Migration
  def change
    create_table :barbers do |t|
      t.string :username
      t.string :name
      t.float :rating
      t.text :personal_bio

      t.timestamps null: false
    end
  end
end
