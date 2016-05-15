require 'rails_helper'

RSpec.describe "todo_lists/new", :type => :view do
  before(:each) do
    assign(:todo_list, TodoList.new(
      :title => "MyString",
      :description => "MyString",
      :text => "MyString"
    ))
  end

  it "renders new todo_list form" do
    render

    assert_select "form[action=?][method=?]", todo_lists_path, "post" do

      assert_select "input#todo_list_title[name=?]", "todo_list[title]"

      assert_select "input#todo_list_description[name=?]", "todo_list[description]"

      assert_select "input#todo_list_text[name=?]", "todo_list[text]"
    end
  end
end
