class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :picture
      t.references :user, foreign_key: true
      t.references :smartphone, foreign_key: true

      t.timestamps
    end
  end
end
