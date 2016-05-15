require 'rails_helper'

RSpec.describe "todo_lists/index", :type => :view do
  before(:each) do
    assign(:todo_lists, [
      TodoList.create!(
        :title => "Title",
        :description => "Description",
        :text => "Text"
      ),
      TodoList.create!(
        :title => "Title",
        :description => "Description",
        :text => "Text"
      )
    ])
  end

  it "renders a list of todo_lists" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Text".to_s, :count => 2
  end
end
