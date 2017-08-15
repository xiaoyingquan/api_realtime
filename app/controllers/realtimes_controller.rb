class RealtimesController < ApplicationController

  def index
    @realtimes = Realtime.all
  end
end
