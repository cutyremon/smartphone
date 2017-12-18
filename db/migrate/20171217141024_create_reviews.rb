class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.references :smartphone, foreign_key: true
      t.string :piture
      t.text :description
      t.float :rate

      t.timestamps
    end
  end
end
