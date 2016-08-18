class Book < ActiveRecord::Base
  has_one :image
  belongs_to :user
end
