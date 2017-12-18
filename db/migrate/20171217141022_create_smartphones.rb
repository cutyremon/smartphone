class CreateSmartphones < ActiveRecord::Migration[5.1]
  def change
    create_table :smartphones do |t|
      t.string :name
      t.string :category
      t.string :picture
      t.float :rate_AVG

      t.timestamps
    end
  end
end
