class AddCommentConferencesReview < ActiveRecord::Migration[5.1]
  def change
  	change_table :comments do |t|
  		 t.references :review, foreign_key: true	
  	end
  end
end
