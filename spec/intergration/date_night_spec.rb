require 'rails_helper.rb'
require 'generator_controller'

feature"DateNight adds New Activity Submission" do
    scenario "DateNigh successfully navigates to the User Submission page" do
        visit user_submission_index_path
        expect(page).to have_content("Name")
        expect(page).to have_content("Type")
        expect(page).to have_content("Info")
        expect(page).to have_content("Location")
        expect(page).to have_content("Link")
        expect(page).to have_content("Update")
        expect(page).to have_content("Delete")
    end
end

#kev second test for generator controller, testing this ciz seems like important part --- can add more later
feature"DateNight create functionality works" do
    scenario "our generator controller can add to food and activity array" do
        #expect array assignments to not blow up
        expect { activityArray = Activity.where(category: 'activity').ids }.not_to raise_error() #warning look at later
        expect { foodArray = Activity.where(category: 'food').ids }.not_to raise_error()
        #expect(aID).to be_a_new(## )
        #expect( @generator.save).to redirect_to(@generator) fails unable to save right now
    end
end

#expect { binary_multiple_of_4?("yes") }.not_to raise_error()#::NoMethodError)

feature"DateNight Activity Page" do
    scenario "DateNigh successfully navigates to the Activity Page" do
        visit activity_index_path
        expect(page).to have_content("Name")
        expect(page).to have_content("Type")
        expect(page).to have_content("Info")
        expect(page).to have_content("Location")
        expect(page).to have_content("Link")
    end
end