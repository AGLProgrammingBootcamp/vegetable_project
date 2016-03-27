class HomeController < ApplicationController
  def about
  end
  def top
    @agriusers = Agriuser.all
  end
  def mesh
  end
end
