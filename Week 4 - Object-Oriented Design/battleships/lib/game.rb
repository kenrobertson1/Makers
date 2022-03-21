class Game
  def initialize
    @rows = 10
    @cols = 10
    @unplaced_ships = ["SS", "SSSSS"]
    @placed_ships = []
  end

  def unplaced_ships
    @unplaced_ships
  end

  def rows
    @rows
  end

  def cols
    @cols
  end

  def place_ship
      ship = {
        length: 3,
        orientation: :vertical,
        row: 3,
        col: 2
      }
    if ship[:orientation] == :vertical
      ship[:length].times {|count| @placed_ships << [ship[:col], (ship[:row] + count)]}
    end
    @placed_ships
    # @unplaced_ships.delete(ship[:length])
  end

  def ship_at?(col, row)
    @placed_ships.include?([col, row])
  end
end

game = Game.new
p game.place_ship
p game.ship_at?(2, 6)