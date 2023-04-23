class PagesController < ApplicationController
  def home
    @articles = Card.where(category: '기사')
    @contents = Card.where.not(category: %w(기사 트라우마대처))
    @guestbook = Guestbook.new
    @guestbooks = Guestbook.order(id: :desc).take(12)
    @safetyzones = Card.where(category: '트라우마대처')
  end

  def about
  end
end
