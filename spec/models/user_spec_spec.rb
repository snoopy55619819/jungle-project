require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    # validation tests/examples here
    it ("should have a matching password") do
      user1 = User.new({
        name: 'Nik',
        email: "test@gmail.com",
        password: '12345678',
        password_confirmation: '12345678',
      })
      
      expect(user1.password == user1.password_confirmation).to eql(true)
    end

    it ("should not have a matching password") do
      user1 = User.new({
        name: 'Nik',
        email: "test@gmail.com",
        password: '12345678',
        password_confirmation: '123456789',
      })
      
      expect(user1.password == user1.password_confirmation).to eql(false)
    end

    it ("should have password over length 8") do
      user1 = User.new({
        name: 'Nik',
        email: "test@gmail.com",
        password: '123456789',
        password_confirmation: '123456789',
      })
      
      expect(user1).to be_valid
    end

    it ("should not have password length less than 8") do
      user1 = User.new({
        name: 'Nik',
        email: "test@gmail.com",
        password: '123',
        password_confirmation: '123',
      })
      
      expect(user1).not_to be_valid
    end

  end
end
