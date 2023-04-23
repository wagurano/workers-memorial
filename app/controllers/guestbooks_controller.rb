class GuestbooksController < ApplicationController
  def index
  end

  def show
    @guestbook = Guestbook.find(params[:id])
    render json: @guestbook
  end

  def create
    @guestbook = Guestbook.new guestbook_params
    respond_to do |format|
      if @guestbook.save
        format.js {}
        format.json { render json: { result: "success", guestbook: @guestbook} }
      else
        format.js {}
        format.json { render json: { result: "failed", errors: @guestbook.errors } }
      end  
    end
  end

  def new
    @guestbook = Gutestbook.new
  end

private
  def guestbook_params
    params.require(:guestbook).permit(:name, :message)
  end
end
