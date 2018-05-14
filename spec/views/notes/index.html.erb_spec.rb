require 'rails_helper'

RSpec.describe "notes/index", type: :view do
  before(:each) do
    assign(:notes, [
      Note.create!(
        :title => "Title",
        :content => "Content",
        :tags => "Tags"
      ),
      Note.create!(
        :title => "Title",
        :content => "Content",
        :tags => "Tags"
      )
    ])
  end

  it "renders a list of notes" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => "Tags".to_s, :count => 2
  end
end
