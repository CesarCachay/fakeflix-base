module Api
  class SeriesController < ApplicationController

    def index
      if params.key? "filter"
        render json: Serie.where(status: params[:filter]), status: :ok
      else
        render json: Serie.all
      end
    end

    def show
      render json: Serie.find(params[:id])
    end

  end
end