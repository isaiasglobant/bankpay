class CreateJourneys < ActiveRecord::Migration[6.0]
  
  def change
    create_table :journeys do |t|
      t.integer :cost
      t.string :origin
      t.string :destination
      t.string :status
      t.belongs_to :rider, null: false, foreign_key: true
      t.belongs_to :driver, null: false, foreign_key: true

      t.timestamps
    end
  end
  
end