module Api::V1
  class GuestsController < ApplicationController
    def index
      @guests = Guest.all
      render json: @guests
    end

    def create
      guest = Guest.new(secure_guest_params)
      if guest.save
        render json: guest
      else
        render json: "Could not save on DB!"
      end
    end

    def update
      guest = Guest.find(params[:id])
      guest.update_attributes(secure_guest_params)
      render json: guest
    end

    def destroy
      guest = Guest.find(params[:id])
      if guest.destroy
        msg = { status: "ok", message:"Success!", html:"<b>...</b>", guestId: guest.id }
        render json: msg
      end
    end

    private
    def secure_guest_params
      params.require(:guest).permit(:name, :is_editing, :is_confirmed)
    end
  end
end
