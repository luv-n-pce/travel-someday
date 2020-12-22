require 'rails_helper'

RSpec.describe Memory, type: :model do
  describe '#create' do
    before do 
      @memory = FactoryBot.build(:memory)
    end

    describe '投稿の保存' do
      context '投稿の保存ができる場合' do
        it "必須項目がすべて存在すれば保存できる" do
          expect(@memory).to be_valid
        end
      end

      context '投稿の保存ができない場合' do
        it "imageが空では保存できない" do
          @memory.image = nil
          @memory.valid?
          expect(@memory.errors.full_messages).to include("Image can't be blank")
        end

        it "titleが空では保存できない" do
          @memory.title = ""
          @memory.valid?
          expect(@memory.errors.full_messages).to include("Title can't be blank")
        end

        it "start_dateが空では保存できない" do
          @memory.start_date = ""
          @memory.valid?
          expect(@memory.errors.full_messages).to include("Start date can't be blank")
        end

        it "end_dateが空では保存できない" do
          @memory.end_date = ""
          @memory.valid?
          expect(@memory.errors.full_messages).to include("End date can't be blank")
        end

        it "country_idが空では保存できない" do
          @memory.country_id = ""
          @memory.valid?
          expect(@memory.errors.full_messages).to include("Country Select")
        end

        it "country_idがid1では保存できない" do
          @memory.country_id = 1
          @memory.valid?
          expect(@memory.errors.full_messages).to include("Country Select")
        end

        it "placeが空では保存できない" do
          @memory.place = ""
          @memory.valid?
          expect(@memory.errors.full_messages).to include("Place can't be blank")
        end

        it "textが空では保存できない" do
          @memory.text = ""
          @memory.valid?
          expect(@memory.errors.full_messages).to include("Text can't be blank")
        end

        it "userが紐付いていないと保存できない" do
          @memory.user = nil
          @memory.valid?
          expect(@memory.errors.full_messages).to include("User must exist")
        end
      end
    end
  end
end
