require 'spec_helper'

describe "gmaps/index" do
  before(:each) do
    assign(:gmaps, [
      stub_model(Gmap,
        :name => "Name",
        :address => "Address",
        :longitude => 1.5,
        :latitude => 1.5,
        :gmaps => false
      ),
      stub_model(Gmap,
        :name => "Name",
        :address => "Address",
        :longitude => 1.5,
        :latitude => 1.5,
        :gmaps => false
      )
    ])
  end

  it "renders a list of gmaps" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
