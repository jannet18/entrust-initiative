class Volunteer < ActiveRecord::Base
    validates :fullname, presence: true
    validates :email, presence: true, format: {with: URI::MailTo::EMAIL_REGEXP}
    validates :contact, presence: true, format: {with: /\A\d{10}\z/}
    validates :area_of_interest, presence: true
    validates :church, presence: true
    validates :message, presence: true
    validates :accepted_terms, presence: true
end
