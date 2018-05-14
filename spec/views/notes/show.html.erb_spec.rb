require 'rails_helper'

RSpec.describe "notes/show", type: :view do
  before(:each) do
    @note = assign(:note, Note.create!(
      :title => "Title",
      :content => "Content",
      :tags => "Tags"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Content/)
    expect(rendered).to match(/Tags/)
  end
end
