class CreateRiders < ActiveRecord::Migration[6.0]
  
  def change
    create_table :riders do |t|
      t.string :name
      t.string :email
      t.string :payment_source_id

      t.timestamps
    end
  end
  
end