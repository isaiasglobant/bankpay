class CreateDrivers < ActiveRecord::Migration[6.0]
  
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :current_location

      t.timestamps
    end
  end
  
end