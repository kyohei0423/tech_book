class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :content
      t.references :book
    end
  end
end
