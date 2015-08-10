require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

  describe('triangle checking process', {:type=>:feature}) do
    it("lets the user input the lengths of the sides of a triangle,
     and tells whether they form an equilateral, isosceles, or scalene triangle.") do
      visit("/")
      fill_in('side_one', :with => '6')
      fill_in('side_two', :with => '6')
      fill_in('side_three', :with => '10')
      click_button('Check')
      expect(page).to have_content('It is an isosceles triangle')
   end
  end
