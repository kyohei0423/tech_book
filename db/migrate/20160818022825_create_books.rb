class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string      :title
      t.integer     :price
      t.text        :description
      t.integer     :status
      t.boolean     :postage, default: false, null: false
      t.references  :user
      t.timestamps  null: false
    end
  end
end
