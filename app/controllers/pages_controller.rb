class PagesController < ApplicationController
  def home
    @size_options = [
      ['Small', '50_200'],
      ['Medium', '201_500'],
      ['Large', '501_1000'],
      ['X-Large', '1001_30000']
    ]
    @garden_type_options = ['Botanical',
      'Park',
      'Rooftop']

    @garden = Garden.all

  end
end
