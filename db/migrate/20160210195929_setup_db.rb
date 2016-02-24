class SetupDb < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :appointment_date
      t.time :appointment_time
      t.timestamps null: false
    end
    add_reference :appointments, :user
    add_reference :appointments, :barber
    add_index :appointments, [:user_id, :barber_id]

    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :barbers, :first_name, :string
    add_column :barbers, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :barbers, :phone_number, :string

    create_table :mailinglists do |t|
      t.timestamps null: false
      t.string :email, null: false
      t.string :first_name
      t.string :last_name
    end
  end
end
