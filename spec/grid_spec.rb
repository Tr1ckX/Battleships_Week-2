require 'grid'

describe Grid do

  let(:grid) {Grid.new}
  let(:content) {double :content}
  # let(:cell) {double :cell, :status}

  it 'must hold 100 elements' do
    grid.backend_contents(content)
    expect(grid.grid.length).to eq 100
  end

  it 'must create a backend grid, with 10 rows and colums' do
    grid.backend_contents(content)
    grid.create_backend_grid
    expect(grid.board.count).to eq 10
  end

  it 'tracking grid must change all ships to water' do
    
  end

end
