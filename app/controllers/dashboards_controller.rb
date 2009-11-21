class DashboardsController < ApplicationController
  def show
    @verse = Verse.random
  end

end
