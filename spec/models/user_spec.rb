require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    described_class.new(
      email: 'test@test.com',
      name: 'user1',
      password: '123456'
    )
  end

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end
  end

  describe 'Associations' do
    it 'has many articles' do
      association = described_class.reflect_on_association(:articles).macro
      expect(association).to eq :has_many
    end
  end
end
