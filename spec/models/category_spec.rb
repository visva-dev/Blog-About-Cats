require 'rails_helper'

RSpec.describe Category, type: :model do
  subject do
    described_class.new(
      category: 'Kittens'
    )
  end

  describe 'Validations' do
    it 'is not valid without user' do
      expect(subject).to_not be_valid
    end

    it 'is not valid without a name' do
      subject.category = nil
      expect(subject).to_not be_valid
    end
  end

  describe 'Associations' do
    it 'belongs_to user' do
      association = described_class.reflect_on_association(:articles).macro
      expect(association).to eq :has_many
    end
  end
end
