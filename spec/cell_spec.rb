require 'cell'

describe Cell do

  let(:cell) { Cell.new }
  let(:ship) { double :ship, hit!: nil}

  it ' knows if it contains a ship' do
    cell.add_ship(ship)
    expect(cell.ship).to eq ship
  end

  it 'cannot be selected when initialized' do
    expect(cell.selected?).to be false
  end

  it 'is water when initialized' do
      expect(cell.status).to eq("~")  
  end

  it 'can be a ship' do
    cell.ship!
    expect(cell.status).to eq("S")
  end

  it 'can be hit water' do
    cell.hit_water!
    expect(cell.status).to eq(".")
  end

  it 'can be a hit ship' do
    cell.hit_ship!
    expect(cell.status).to eq("X")
  end

  it ' can be selected' do
    cell.select_cell
    expect(cell.selected?).to be true
  end

  it 'changes to hit water when water selected' do
    cell.select_cell
    expect(cell.status).to eq(".")
  end

  it 'changes to hit ship, if it contains a ship and gets hit' do
    cell.ship!
    cell.select_cell
    expect(cell.status).to eq("X")

  end

  # it 'water becomes hit ship, if contains ship' do
  #   cell.add_ship(ship)
  #   cell.select_cell
  #   expect(cell.status).to eq("X")
  # end

  it 'knows it contains a ship when it is a ship' do
    cell.add_ship(ship)
    expect(cell).to have_ship
  end

  it 'cannot be hit/selected more than once' do
    cell.select_cell
    expect{cell.select_cell}.to raise_error("Cannot select twice, duh!")
  end


end
