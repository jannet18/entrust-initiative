class Category < ActiveRecord::Base
    belongs_to :program
    validates :name, :description, :image_url, presence: true
end
