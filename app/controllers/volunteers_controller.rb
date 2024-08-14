class VolunteersController < ApplicationController
    def create
        volunteer = Volunteer.new(volunteer_params)
        if volunteer.save
          render json: volunteer, status: :created
        else
          render json: volunteer, status: :unprocessable_entity
        end
      end
    
      private
      def volunteer_params
        params.require(:volunteer).permit(:fullname, :email, :contact, :area_of_interest, :church, :message, :accepted_terms)
      end
end
