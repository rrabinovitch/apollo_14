require 'rails_helper'

RSpec.describe 'When I visit the astronauts index page' do
  it "I see a list of astronauts and their info" do
    armstrong = Astronaut.create!(name: "Neil Armstrong", age: 37, job: "Commander")
    behnken = Astronaut.create!(name: "Bob Behnken", age: 49, job: "Chief")

    visit '/astronauts'

    expect(page).to have_content(armstrong.name)
    expect(page).to have_content(armstrong.age)
    expect(page).to have_content(armstrong.job)
    expect(page).to have_content(behnken.name)
    expect(page).to have_content(behnken.age)
    expect(page).to have_content(behnken.job)
  end
end
