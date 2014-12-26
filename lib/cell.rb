class Cell

  def initialize
    @selected = false
    @ship = nil
    water!
  end

  attr_reader :status
  attr_reader :ship

  def water!
    @status = "~"  # status: ~ = water, . = hit water, S = ship, X = hit ship
  end

  def is_water?
    @status == "~"
  end

  def hit_water!
    @status = "."
  end

  def ship!
    @status = "S"
  end

  def is_ship?
    @status == "S"
  end

  def hit_ship!
    @status = "X"
  end

  def selected?
     @selected
  end

  def select_cell
    change_status
    raise "Cannot select twice, duh!" if @selected == true
    @selected = true
    @ship.hit!(self) if @ship != nil
  end

  def add_ship(ship)
    @has_ship = true
    @ship = ship
    ship!
  end

  def has_ship?
    @ship
  end

  def change_status
    hit_ship! if (is_water? && has_ship?) || is_ship?
    hit_water! if is_water?
  end

end