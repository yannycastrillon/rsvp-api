module Api::V1
  class GuestsController < ApplicationController
    def index
      @guests = Guest.all
      render json: @guests
    end
  end
end
