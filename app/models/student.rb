class Student < ApplicationRecord
    enum gender: {male: 0, female: 0, other:2 }
    has_many :student_programs
    has_many :programs, through: :student_programs

    validates :fullname, :gender, :date, :contact, :church, presence: true
    validates :email, presence: true, format: {with: URI::MailTo::EMAIL_REGEXP}
    validates :contact, presence: true, format: {with: /\A\d{10}\z/}
    validates :responsibility, :description, :motivation, :challenges, :availability, :commitments, :achievements, :accepted_terms, presence:true
end
