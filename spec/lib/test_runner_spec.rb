require 'spec_helper'
require 'test_runner'

describe TestRunner do

  subject { TestRunner.run(rolls) }

  context 'player rolls all gutter balls' do

    let(:rolls) { [0] * 20 }
    xit { expect(subject).to eq 0 }
  end

  context 'player rolls all 1\'s' do

    let(:rolls) { [1] * 20 }
    xit { expect(subject).to eq 20 }
  end

  context 'player rolls a spare and a 5' do

    let(:rolls) { [7,3,5].concat([0] * 20) }
    xit { expect(subject).to eq 20 }
  end

  context 'player rolls a strike and a 2 and a 7' do

    let(:rolls) { [10,2,7].concat([0] * 27) }
    xit { expect(subject).to eq 17 }
  end

  context 'player rolls a perfect game' do

    let(:rolls) { [10] * 12 }
    xit { expect(subject).to eq 300 }
  end
end