require 'rails_helper'

RSpec.describe Category, type: :model do
  subject { Category.create(name: 'Rhys', icon: 'hello from the other side') }

  it 'User has to to be valid' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'Name should not be too long' do
    subject.icon = 'a' * 50
    expect(subject).to_not be_valid
  end
end