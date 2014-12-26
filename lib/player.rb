class Player

    def select(cell)
        cell.select_cell
    end

    def place_ship(ship, *args)
        ship.add(args)
        assign_cells(ship, args)
    end

    def assign_cells(ship, cell_array)
        cell_array.each { |cell| cell.add_ship(ship) }
    end

end
