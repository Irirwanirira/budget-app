require 'rails_helper'

RSpec.describe Transaction, type: :model do
  subject { Transaction.create(name: 'joseph', amount: 2000) }

  it 'name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'name should not be too long' do
    subject.name = 'a' * 50
    expect(subject).to_not be_valid
  end

  it 'price should be integer' do
    subject.amount = 2000
    expect(subject).to_not be_valid
  end
end