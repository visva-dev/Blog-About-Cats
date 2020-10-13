# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Category, type: :model do
  subject do
    described_class.new(
      category: 'Football'
    )
  end

  describe 'Validations' do
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
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
