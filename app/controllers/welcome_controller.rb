class WelcomeController < ApplicationController
  skip_before_action :authenticate
  
  def index
    @events = Event.order_start_at
  end
end
