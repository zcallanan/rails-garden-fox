class GardenSearchService
  def self.call(*args)
    new(*args).call
  end

  def initialize(
    gardens: nil,
    address: nil,
    size: nil,
    capacity: nil,
    garden_type: nil,
    min_price: nil,
    max_price: nil,
    start_date: nil,
    end_date: nil
  )
    @gardens = gardens || Garden.all
    @address = address
    @size = size
    @capacity = capacity
    @garden_type = garden_type
    @min_price = min_price
    @max_price = max_price
    @start_date = start_date
    @end_date = end_date
  end

  def call
    @gardens = @gardens.search_by_available_dates(@start_date, @end_date) if @start_date.present? && @end_date.present?
    @gardens = @gardens.search_by_address(@address) if @address.present?
    @gardens = @gardens.search_by_size(@size) if @size.present?
    @gardens = @gardens.search_by_capacity(@capacity) if @capacity.present?
    @gardens = @gardens.search_by_garden_type(@garden_type) if @garden_type.present?
    @gardens = @gardens.where(price_per_day: @min_price..@max_price)
    @gardens.with_attached_photo
  end
end
