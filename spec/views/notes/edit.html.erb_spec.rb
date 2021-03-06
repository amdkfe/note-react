require 'rails_helper'

RSpec.describe "notes/edit", type: :view do
  before(:each) do
    @note = assign(:note, Note.create!(
      :title => "MyString",
      :content => "MyString",
      :tags => "MyString"
    ))
  end

  it "renders the edit note form" do
    render

    assert_select "form[action=?][method=?]", note_path(@note), "post" do

      assert_select "input[name=?]", "note[title]"

      assert_select "input[name=?]", "note[content]"

      assert_select "input[name=?]", "note[tags]"
    end
  end
end
