class WelcomeController < ApplicationController
  skip_before_action :authenticate
  
  def index
    @events = Event.start_at
  end
end
