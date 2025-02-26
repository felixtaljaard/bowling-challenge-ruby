require 'game'


describe 'Bowling Game' do
  before do
    @game = Game.new
  end

  it 'can roll a gutter game' do
    20.times{@game.roll(0)}
    expect(@game.score).to eq 0
  end

  it 'can roll all ones' do
    20.times{@game.roll(1)}
    expect(@game.score).to eq 20
  end

  it 'can roll a spare' do
    @game.roll(5)
    @game.roll(5)
    @game.roll(3)
    17.times{@game.roll(0)}
    expect(@game.score).to eq 16
  end

  it 'can roll a strike' do
    @game.roll(10)
    @game.roll(4)
    @game.roll(3)
    16.times{@game.roll(0)}
    expect(@game.score).to eq 24
  end

  it 'can roll a perfect game' do
    12.times{@game.roll(10)}
    expect(@game.score).to eq 300
  end

  it 'can roll all spares' do
    21.times{@game.roll(5)}
    expect(@game.score).to eq 150
  end


end
