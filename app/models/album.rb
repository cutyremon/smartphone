class Album < ApplicationRecord
  belongs_to :user
  belongs_to :smartphone
end
