require 'rails_helper.rb'
require 'generator_controller'
require 'activity_controller'


######Test passes after Liz's changes 
#test for generator controller
feature"DateNight create functionality works" do
    scenario "our generator controller can add to food and activity array" do
        #expect array assignments to not blow up
        expect { activityArray = Activity.where(category: 'activity').ids }.not_to raise_error() 
        expect { foodArray = Activity.where(category: 'food').ids }.not_to raise_error()
        expect { activityArray = Activity.where(category: 'activity') }.not_to raise_error()
        expect { foodArray = Activity.where(category: 'food') }.not_to raise_error()
    end
end


######Test passes after Liz's changes keep this guy
feature"DateNight Activity Page" do
    scenario "DateNight successfully navigates to the Activity Page" do
        #visit user_submission_index_path
        #visit generator_path
        visit activity_index_path
        expect(page).to have_content("Name")
        expect(page).to have_content("Type")
        expect(page).to have_content("Info")
        expect(page).to have_content("Location")
        expect(page).to have_content("Link")
    end
end


######Test passes after Liz's changes
feature"App includes copyright" do
    scenario "Checking Activity page for copy right" do
        #visit user_submission_index_path
        #visit generator_path
        visit activity_index_path
        expect(page).to have_content("Copyright 2019")
        expect(page).to have_content("DateNight")
        expect(page).to have_content("All Rights Reserved")
    end
end

######Test passes after Liz's changes
feature"App includes Safe practices, admin login, submit" do
    scenario "Checking Activity page for Safe practices link, and admin login, Submit A New Date" do
        #visit user_submission_index_path
        #visit generator_path
        visit activity_index_path
        expect(page).to have_content("Safe Dating Practices") 
        expect(page).to have_content("Link")
        expect(page).to have_content("Submit A New Date")
        # expected to find text "Terms of Service" in "Date Night\nSlid into the DMs...Now What?\nName 
        #Type Info Location Link\nGenerate A Date View All Submit A New Date Safe Dating Practices\n© Copyright 2019 DateNight. All Rights Reserved\nAdmin"
    end
end

######Test passes after Liz's changes  --  this is the new one
feature"user submission blocked without admin login" do
    scenario "Checking app that user submission requires admin approval" do
        visit user_submission_index_path
        expect(page).to have_content("HTTP Basic: Access denied") 
        #expect(page).to have_content("Date")  # should fail cuz no login
    end
end



