require 'spec_helper'

describe "wishlists/show" do
  before(:each) do
    @wishlist = assign(:wishlist, stub_model(Wishlist,
      :references => "",
      :title => "Title",
      :description => "MyText",
      :public => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
  end
end
