class CategoriesController < ApplicationController
    before_action :set_program

    def index
        @categories = @program.categories
        render json: @categories
    end

    def show 
        @category = @program.categories.find(params[:id])
        render json: @category
    end

    private
    def set_program
        @program = Program.find(params[:program_id])
    end
end
