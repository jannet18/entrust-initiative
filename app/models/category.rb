class Category < ApplicationRecord
    belongs_to :program
    validates :name, :description, :image_url, presence: true
end
