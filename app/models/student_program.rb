class StudentProgram < ActiveRecord::Base
    belongs_to :student
    belongs_to :program
end
