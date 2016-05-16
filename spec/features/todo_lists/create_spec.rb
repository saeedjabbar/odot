require 'rails_helper'
require 'spec_helper'

describe "Creating Todo lists" do
  it "redirects to the todo list index page on success" do
    visit "/todo_lists"
    click_link "New Todo list"
    expect(page).to have_content("New todo_list")
  end
end