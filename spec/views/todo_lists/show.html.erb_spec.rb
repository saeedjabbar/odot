require 'rails_helper'

RSpec.describe "todo_lists/show", :type => :view do
  before(:each) do
    @todo_list = assign(:todo_list, TodoList.create!(
      :title => "Title",
      :description => "Description",
      :text => "Text"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Text/)
  end
end
