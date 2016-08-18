class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string      :family_name
      t.string      :first_name
      t.integer     :postal_code
      t.string      :address
      t.references  :user
      t.references  :book
      t.timestamps
    end
  end
end
