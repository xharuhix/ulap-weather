require 'spec_helper'

describe "gmaps/edit" do
  before(:each) do
    @gmap = assign(:gmap, stub_model(Gmap,
      :name => "MyString",
      :address => "MyString",
      :longitude => 1.5,
      :latitude => 1.5,
      :gmaps => false
    ))
  end

  it "renders the edit gmap form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", gmap_path(@gmap), "post" do
      assert_select "input#gmap_name[name=?]", "gmap[name]"
      assert_select "input#gmap_address[name=?]", "gmap[address]"
      assert_select "input#gmap_longitude[name=?]", "gmap[longitude]"
      assert_select "input#gmap_latitude[name=?]", "gmap[latitude]"
      assert_select "input#gmap_gmaps[name=?]", "gmap[gmaps]"
    end
  end
end
