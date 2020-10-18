require 'rails_helper'

RSpec.describe Article, type: :model do
  let(:user) { User.create(name: 'Visvaldas', email: 'visva.rapalis@gmail.com') }
  let(:category) { Category.create(category: 'Kittens') }
  context 'Associations' do
    it 'belongs_to user' do
      association = described_class.reflect_on_association(:user).macro
      expect(association).to eq :belongs_to
    end

    it 'belongs_to category' do
      association = described_class.reflect_on_association(:category).macro
      expect(association).to eq :belongs_to
    end
  end

  context 'Validations' do
    subject do
      described_class.new(title: 'Anything',
                          content: 'Lorem ipsum',
                          category_id: 1,
                          user_id: user.id)
    end

    it 'is valid with valid attributes' do
      subject.image = 'fdfdfdfdfd'
      subject.user = user
      subject.category = category
      expect(subject).to be_valid
    end

    it 'is not valid without a title' do
      subject.title = nil
      expect(subject).to_not be_valid
    end
    it 'is not valid without a text' do
      subject.content = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without a category' do
      subject.category_id = nil
      expect(subject).to_not be_valid
    end
  end
end
