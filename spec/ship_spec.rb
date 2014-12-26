require 'ship'

describe Ship do

  let(:ship) { Ship.new(3) }
  let(:cell1) {double :cell}
  let(:cell2) {double :cell}
  let(:cell3) {double :cell}
  let(:cell4) {double :cell}

  def cell_array
    cell_array = [cell1, cell2, cell3]
  end

  it 'needs to be initialized with a set length' do
    expect(ship.length).to eq 3
  end

  it "should not be hit when initialized" do
    expect(ship.hit_count).to eq 0
  end

  it 'will receive cells from ...' do
    cell_array
    ship.add(cell_array)
  end

  it 'number of cells added should match stipulated length' do
    cell_array
    ship.add(cell_array)
    expect(ship.size).to eq 3
  end

  it 'should throw error if cells do not match length' do
    cell_array = [cell1, cell2, cell3, cell4]
    expect{ship.add(cell_array)}.to raise_error('UNACCEPTABLE SHIP!')
  end

  it 'should be floating when initialized' do
    expect(ship.sunk?).to be false
  end

  it 'cells within can be hit' do
    expect(cell1).to receive(:selected?).and_return(true)
    ship.hit!(cell1)
    expect(ship.hit_count).to eq 1
  end

  it "can be sunk" do
    ship.sink!
    expect(ship.sunk?).to be true
  end

  it "should not be possible to hit sunken ship" do
    ship.sink!
    expect{ship.hit!(cell1)}.to raise_error("Overkill dude!")
  end

end
