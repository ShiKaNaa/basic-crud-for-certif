class Liste < ApplicationRecord
  has_many :ingredients, dependent: :destroy
end
