class PagesController < ApplicationController
  def index
    @events = Event.order(start_date: :asc).limit(5)
    @messages = Message.order(created_at: :desc).limit(5)
  end
end
