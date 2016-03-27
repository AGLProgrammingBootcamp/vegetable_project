class HomeController < ApplicationController
helper_method :sort_column, :sort_direction
  def about
  end
  def top
    @agriusers = Agriuser.all
    @agriusers1 = Agriuser.all.order("likescounter DESC")
  end
  def mesh
  end
end
