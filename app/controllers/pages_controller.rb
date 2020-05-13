class PagesController < ApplicationController
  def home
    @garden = Garden.all
  end
end
