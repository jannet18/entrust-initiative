class TeamsController < ApplicationController
    def index
        @teams = Team.all.map do |team|
            team.attributes.merge(image_url: ActionController::Base.helpers.asset_path(team.image))
        end
        render json: @teams
    end

    def show
        @team = Team.find(params[:id])
        render json: @team
    end
end
