require 'spec_helper'

describe Board do

  describe '#neighbors' do
    let(:grid) do
      [
        [1,0,0,9],
        [3,2,3,3],
        [5,4,4,4]
      ]
    end
    let(:x) { 0 }
    let(:y) { 0 }
    subject { Board.new(grid).neighbors(x,y) }
    it { should be_kind_of Array }
    context "when surrounded" do
      let(:x) { 1 }
      let(:y) { 1 }
      it { should eq [1,0,0,3,3,5,4,4] }
    end
    context "when in top left" do
      let(:x) { 0 }
      let(:y) { 0 }
      it { should eq [0, 3, 2] }
    end
  end
end