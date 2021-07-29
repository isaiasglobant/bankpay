class CreateRiders < ActiveRecord::Migration[6.0]
  
  def change
    create_table :riders do |t|
      t.string :name
      t.string :origin
      t.string :destination

      t.timestamps
    end
  end
  
end