class Grid

    attr_reader :grid
    attr_reader :board
    attr_reader :board_of_values
    attr_reader :grid_of_values

    def initialize
        @grid = []
        @board = [] 
        @grid_of_values = []
        @board_of_values = []
    end

    def backend_contents(content)
        100.times{@grid << content}
    end

    def create_backend_grid
        @board = @grid.each_slice(10).map {|e| e}
    end

    def play_contents
        @grid_of_values.clear
        @grid.each { |cell| @grid_of_values << cell.status } #!
        @grid_of_values
    end

    def track_contents
        @track_grid_of_values = @grid_of_values.collect { |element| element == 3 ? 1 : element }
        @track_grid_of_values
    end

    def render_grid(array)
        display = array.each_slice(10).map { |e| e }
        display.each {|line| p line.join(' ')}
        nil
    end

    def display_player_grid
        render_grid(play_contents)
    end

    def display_tracking_grid
        render_grid(track_contents)
    end

end





    # def render_grid
    #     # creating the player's grid

    #     100.times{@grid << Cell.new}
    #     @board = @grid.each_slice(10).map {|e| e}
    #     @grid.each {|cell| @grid_of_values << cell.status}
    #     @board_of_values = @grid_of_values.each_slice(10).map {|e| e}
    #     @board_of_values.each {|line| p line.join('  ') }
    #     nil
    # end
    #     # creating the targeting grid

    # def update_track_grid

    #     @track_grid_of_values = @grid_of_values.collect { |element|
    #         element == 3 ? 1 : element }
    #     @board_of_values = @track_grid_of_values.each_slice(10).map {|e| e}
    #     @board_of_values.each {|line| p line.join('  ') }
    #     nil
    # end

    # def update_grid
    #     # updating the player's grid 

    #     @grid_of_values.clear
    #     @grid.each {|cell| @grid_of_values << cell.status}
    #     @board_of_values = @grid_of_values.each_slice(10).map {|e| e}
    #     @board_of_values.each {|line| p line.join('  ') }
    #     nil

    # end

    

    #Make an array 'grid' with 100 instances of Cell
   
    # Convert grid into array of arrays 10 x 10b
    
    # board[5][5] is a direct reference to the cell.
    #Methods can be called directly on this ref. 

    # Make an array that shows only values
    #grid_values = []
    #grid.each {|cell| grid_values << cell.status}

    #make grid_values into array of arrays called board_values then:
    #board_values.each {|line| p line.join('  ') }







