class CardsController < ApplicationController
    before_action :authorized, only: [:create]

    def create
      @card = @user.cards.create(card_params)
      render json: @card
    end

    def index
      @cards = Card.all
    end

    def destroy
      @card = Card.find(params[:id])
      @card.destroy
      render json: @cards
    end

  
  
    private
  
    def card_params
      params.permit(:content_url,:card_title,:message)
    end
end
