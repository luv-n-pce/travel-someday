require 'rails_helper'

RSpec.describe Plan, type: :model do
  describe '#create' do
    before do 
      @plan = FactoryBot.build(:plan)
    end

    describe '旅行計画の保存' do
      context '旅行計画の保存ができる場合' do
        it '必須項目がすべて存在すれば保存できる' do
          expect(@plan).to be_valid
        end
      end
    
      context '旅行計画の保存ができない場合' do
        it 'country_idが空では保存できない' do
          @plan.country_id = ""
          @plan.valid?
          expect(@plan.errors.full_messages).to include("Country Select")
        end

        it 'country_idがid1だと保存できない' do
          @plan.country_id = 1
          @plan.valid?
          expect(@plan.errors.full_messages).to include("Country Select")
        end

        it 'placeが空では保存できない' do
          @plan.place = ""
          @plan.valid?
          expect(@plan.errors.full_messages).to include("Place can't be blank")
        end

        it "userが紐付いていないと保存できない" do
          @plan.user = nil
          @plan.valid?
          expect(@plan.errors.full_messages).to include("User must exist")
        end
      end
    end
  end
end

