class AddEmailAndPaymentSourceToRiders < ActiveRecord::Migration[6.0]
  def change
    add_column :riders, :email, :string
    add_column :riders, :payment_source_id, :integer
  end
end