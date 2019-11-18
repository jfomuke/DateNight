require 'rails_helper.rb'

feature"DateNight adds Contents" do
    scenario "DateNigh successfully navigates to the User Submission page" do
        visit user_submission_index_path
        expect(page).to have_content("Name")
        expect(page).to have_content("Type")
        expect(page).to have_content("Info")
        expect(page).to have_content("Location")
      #  expect(page).to have_field("Name")
      #  expect(page).to have_field("Description")
    end
   

end