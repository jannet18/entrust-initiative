class ProgramsController < ApplicationController
    def index 
        @programs = Program.all
        render json: @programs
    end

    def show
        @program = Program.find(params[:id])
        render json: @program
    end

    def categories
        @program = Program.find(params[:program_id])
        categories = @program.categories
        render json: categories
    end
end
