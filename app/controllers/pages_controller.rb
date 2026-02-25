class PagesController < ApplicationController
  def index
    @events = Event.all
    @messages = Message.all
  end
end
