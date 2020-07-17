require 'rails_helper'

describe Mission, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :time_in_space }
  end

  describe 'Relationships' do
    it { should have_many :astronaut_missions}
    it { should have_many :astronauts}
  end

  describe 'Methods' do
    it ".alphabetical_titles" do
      gemini = Mission.create!(title: "Gemini 7", time_in_space: 40)
      apollo = Mission.create!(title: "Apollo 13", time_in_space: 14)
      capricorn = Mission.create!(title: "Capricorn 4", time_in_space: 24)

      expect(Mission.alphabetical_titles).to eq(["Apollo 13", "Capricorn 4", "Gemini 7"])
    end
  end
end
