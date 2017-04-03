class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :phone_numder
      t.string :email
      t.string :img
      t.string :description
      t.timestamps :time_of_order
    end
  end
end
