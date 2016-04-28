require 'rails_helper'

RSpec.describe Cat, type: :model do
  describe "when creating" do
    context "gen one cats" do
      it "does not need parents" do
        cat = Cat.gen_one_create
        expect(cat.gen_one).to eq(true)
      end
    end
  end
end
