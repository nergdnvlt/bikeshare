require 'rails_helper'

RSpec.describe Accessory, type: :model do
  context 'Validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :description }
    it { should validate_presence_of :price }
    it { should validate_numericality_of(:price).is_greater_than(0) }
  end
end
