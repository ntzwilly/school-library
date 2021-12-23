require_relative 'spec_helper'

describe Corrector do
  before :each do
    @corrector = Corrector.new
  end

  describe 'Set correct name' do
    context 'Name in downcase' do
      it 'Capitalize the name' do
        expect(@corrector.correct_name('henry')).to eq 'Henry'
      end
    end

    context 'When given more than 10 characters' do
      it 'Should return 10 character string' do
        expect(@corrector.correct_name('Henry Kelechukwu')).to eq 'Henry kele'
      end
    end
  end
end