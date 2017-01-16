class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :company_name
      t.text :address
      t.string :city
      t.string :county
      t.string :state
      t.integer :zip
      t.string :phone1
      t.string :phone2
      t.string :email
      t.string :web

      t.timestamps
    end
  end
end
