# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Category, type: :model do # rubocop:todo Metrics/BlockLength
  let(:user) { User.create(name: 'Caren', email: 'caren@gmail.com', password: 'test123') }
  let(:category) { Category.new(author: user, name: 'test Category', amount: 20) }

  before { category.save }

  describe 'validations' do
    it 'requires an author' do
      category.author = nil
      expect(category).to_not be_valid
    end

    it 'requires a name' do
      category.name = nil
      expect(category).to_not be_valid
    end

    it 'requires a non-empty name' do
      category.name = '   '
      expect(category).to_not be_valid
    end

    it 'requires a positive amount' do
      category.amount = -1
      expect(category).to_not be_valid
    end

    it 'is valid with zero amount' do
      category.amount = 0
      expect(category).to be_valid
    end

    it 'is valid with a positive amount' do
      category.amount = 10
      expect(category).to be_valid
    end
  end

  describe 'associations' do
    it 'belongs to an author' do
      expect(category.author).to eq(user)
    end
  end
end
