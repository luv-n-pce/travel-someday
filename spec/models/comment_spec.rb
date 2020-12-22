require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe '#create' do
    before do 
      @comment = FactoryBot.build(:comment)
    end

    describe 'コメント投稿' do
      context '投稿の保存ができる場合' do
        it "textが存在すれば保存できる" do
          expect(@comment).to be_valid
        end
      end

      context '投稿の保存ができない場合' do
        it "textが空では保存できない" do
          @comment.text = ""
          @comment.valid?
          expect(@comment.errors.full_messages).to include("Text can't be blank")
        end

        it "userが紐付いていないと保存できない" do
          @comment.user = nil
          @comment.valid?
          expect(@comment.errors.full_messages).to include("User must exist")
        end

        it "memoryが紐付いていないと保存できない" do
          @comment.memory = nil
          @comment.valid?
          expect(@comment.errors.full_messages).to include("Memory must exist")
        end
      end
    end
  end
end
