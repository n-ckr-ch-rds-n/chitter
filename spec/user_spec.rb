require 'user'

describe User do
  before(:each) do
    @user = User.save(username: 'John Snow', email: 'j.snow@gmail.com', password: 'seekrit')
  end

  describe '.save' do
    it 'adds a new user to the database' do
      expect(@user.id).not_to be_nil
    end
  end

  describe '.all' do
    it 'returns all users' do
      users = User.all.map(&:username)
      expect(users).to include("John Snow")
    end
  end

end