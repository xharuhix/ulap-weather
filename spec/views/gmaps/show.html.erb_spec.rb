require 'spec_helper'

describe "gmaps/show" do
  before(:each) do
    @gmap = assign(:gmap, stub_model(Gmap,
      :name => "Name",
      :address => "Address",
      :longitude => 1.5,
      :latitude => 1.5,
      :gmaps => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Address/)
    rendered.should match(/1.5/)
    rendered.should match(/1.5/)
    rendered.should match(/false/)
  end
end
