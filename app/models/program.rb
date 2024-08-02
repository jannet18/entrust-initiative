class Program < ApplicationRecord
    has_many :student_programs
    has_many :students, through: :student_programs

    has_many :categories, dependent: :destroy
    accepts_nested_attributes_for :categories, allow_destroy: true
    validates :name, :description, :image_url, presence: true
end
