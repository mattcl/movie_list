require 'spec_helper'

describe "wishlists/index" do
  before(:each) do
    assign(:wishlists, [
      stub_model(Wishlist,
        :references => "",
        :title => "Title",
        :description => "MyText",
        :public => false
      ),
      stub_model(Wishlist,
        :references => "",
        :title => "Title",
        :description => "MyText",
        :public => false
      )
    ])
  end

  it "renders a list of wishlists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
