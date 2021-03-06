require 'oystercard'

describe Oystercard do

  subject(:oyster) {described_class.new}
  let(:entry_station) { double :entry_station}
  let(:exit_station) { double :exit_station}

  context 'balance on card' do
    it 'has money on the card, its initial value is 0' do
      expect(oyster.balance).to eq Oystercard::DEFAULT_BALANCE
    end
  end

  context 'deduction' do

    it "deducts #{Oystercard::MINIMUM_BALANCE} on touch out" do
      oyster.top_up(10)
      oyster.touch_in(entry_station)
      expect{oyster.touch_out(exit_station)}.to change {oyster.balance}.by(-1)
    end
  end

  context 'top_up' do

    it 'the top up increases the amount on the card' do
      amount = 10
      expect(oyster.top_up(amount)).to eq(oyster.balance)
    end

    context 'maximum balance' do
      it 'raise error if we try to top of after the card reached the maximum' do
        oyster.top_up(Oystercard::MAXIMUM_BALANCE)
        expect{oyster.top_up(1)}.to raise_error('The card has reached its maximum, no more top up')
      end
    end
  end

  context "raise error" do
    it "when trying to touch out without touching in" do
      message = "You can only touch out if you already touched in"
      expect{oyster.touch_out(exit_station)}.to raise_error message
    end

    it 'raises an error when you try to touch in with less than minimum fare on balance' do
      message = "You cannot touch in without having the minimum fare on your card"
      expect{oyster.touch_in(entry_station)}.to raise_error message
    end
  end
end
