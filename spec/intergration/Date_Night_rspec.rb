require 'rails_helper.rb'

feature"DateNight adds an article" do
    scenario "Blogger successfully navigates to the new article page from the listing articles page" do
        visit articles_path
        expect(page).to have_content("Listing articles")
        click_link "New article"
        expect(page).to have_content("New Article")
        expect(page).to have_field("Title")
        expect(page).to have_field("Text")
    end
    
    scenario "DateNight successfully creates a new article" do
        visit new_article_path
        expect(page).to have_content("New Article")
        fill_in "Title", with: "New Capybora Article"
        fill_in "Text", with: "This is a new Capybora article"
        click_button "Create Article"
        expect(page).to have_content("New Capybora Article")
        expect(page).to have_content("This is a new Capybora article")
    end
end