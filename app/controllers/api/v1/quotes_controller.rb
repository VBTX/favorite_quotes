class Api::V1::QuotesController < ApplicationController
  before_action :set_quote, only: [:show, :update, :destroy]

  # GET /quotes
  def index
     if logged_in?
    @quotes = current_user.quotes
    render json: @quotes
  else
    render json: {
      error: "You must be logged in to see your quotes"
    }
  end
  end

  # GET /quotes/1
  def show
    render json: @quote
  end

  # POST /quotes
  def create
    @quotes = current_user.quotes
    if @quotes.find_by(text: quote_params[:text])
      render json: {
        error: "This quote is already in your collection!"
      }
    else
       @quote = Quote.new(quote_params)

        if @quote.save
             render json: @quote, status: :created
         else
             render json: @quote.errors, status: :unprocessable_entity
         end
     end
  end

  # PATCH/PUT /quotes/1
  def update
    if @quote.update(quote_params)
      render json: @quote
    else
      render json: @quote.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quotes/1
  def destroy
    if @quote.destroy
      render json: {
        message: "Quote deleted!"
      }

    else

      error_resp = {
        error: "Not sure what happened here!"
      }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote
      @quote = Quote.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def quote_params
      params.require(:quote).permit(:author, :source, :text, :user_id, note_ids: [])
    end
end
