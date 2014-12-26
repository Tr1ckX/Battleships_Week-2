require 'player'

describe Player do

    let(:player) { Player.new }
    let(:cell) { double :cell, :add_ship => nil }
    let(:ship) { double :ship }
    
    it 'should be able to select a cell' do
        expect(cell).to receive(:select_cell)  
        player.select(cell)
    end

    it 'should be able to place ships' do
        expect(ship).to receive(:add).with([cell])
        player.place_ship(ship, cell)       
    end


end
 