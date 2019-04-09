module Api
  class EpisodesController < ApplicationController

    def index
      render json: Episode.all, status: :ok
    end
    
    def show
      render json: Episode.find(params[:id])
    end

    def playback
      episode = Episode.find(params[:id])
      episode.playback = params[:progress]
      episode.save()
      render json: { message: "Update successfull playback episode" }, status: :ok
    end

  end
end