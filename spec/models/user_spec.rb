require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#create' do
    before do 
      @user = FactoryBot.build(:user)
    end

    describe 'ユーザー新規登録' do
      context '新規登録がうまくいく場合' do
        it "nickname、email、password、password_confirmation" do
          expect(@user).to be_valid
        end

        it "nicknameが40文字以下であれば登録できる" do
          @user.nickname = "a" * 40
          expect(@user).to be_valid
        end

        it "passwordが6文字以上で英数字の組み合わせであれば登録できる" do
          @user.password = "abc123"
          @user.password_confirmation = "abc123"
          expect(@user).to be_valid
        end
      end

      context '新規登録がうまくいかない場合' do
        it "nicknameが空では登録できない" do
          @user.nickname = ""
          @user.valid?
          expect(@user.errors.full_messages).to include("Nickname can't be blank")
        end

        it "nicknameが41文字以上だと登録できない"do
          @user.nickname = "a" * 41
          @user.valid?
          expect(@user.errors.full_messages).to include("Nickname is too long (maximum is 40 characters)")
        end

        it "emailが空では登録できない" do
          @user.email = ""
          @user.valid?
          expect(@user.errors.full_messages).to include("Email can't be blank")
        end

        it "emailに@が含まれない場合は登録できない" do
          @user.email = "aaaaaa"
          @user.valid?
          expect(@user.errors.full_messages).to include("Email is invalid")
        end          

        it "重複したemailが存在する場合は登録できない" do
          @user.save
          another_user = FactoryBot.build(:user)
          another_user.email = @user.email
          another_user.valid?
          expect(another_user.errors.full_messages).to include("Email has already been taken")
        end

        it "passwordが空では登録できない" do
          @user.password = ""
          @user.valid?
          expect(@user.errors.full_messages).to include("Password can't be blank")
        end

        it "passwordが5文字以下では登録できない" do
          @user.password = "abc12"
          @user.password_confirmation = "abc12"
          @user.valid?
          expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
        end

        it "passwordが存在してもpassword_confirmationが空では登録できない" do
          @user.password_confirmation = ""
          @user.valid?
          expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
        end

        it "passwordが数字のみの場合は登録できない" do
          @user.password = "123456"
          @user.password_confirmation = "123456"
          @user.valid?
          expect(@user.errors.full_messages).to include("Password includes both letters and numbers")
        end

        it "passwordが英文字のみの場合は登録できない" do
          @user.password = "abcdef"
          @user.password_confirmation = "abcdef"
          @user.valid?
          expect(@user.errors.full_messages).to include("Password includes both letters and numbers")
        end
      end
    end
  end
end
