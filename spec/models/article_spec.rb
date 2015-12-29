require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :content }
    it { is_expected.to validate_presence_of :category }
    it { is_expected.to validate_presence_of :completed_on }
  end

  describe 'db columns' do
    it { is_expected.to have_db_column :title }
    it { is_expected.to have_db_column :content }
    it { is_expected.to have_db_column :completed_on }
    it { is_expected.to have_db_column :category_id }
    it { is_expected.to have_db_column :user_id }
  end

  describe 'associations' do
    it { is_expected.to belong_to :user }
    it { is_expected.to belong_to :category }
  end
end
