require 'spec_helper'

describe "wishlists/new" do
  before(:each) do
    assign(:wishlist, stub_model(Wishlist,
      :references => "",
      :title => "MyString",
      :description => "MyText",
      :public => false
    ).as_new_record)
  end

  it "renders new wishlist form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => wishlists_path, :method => "post" do
      assert_select "input#wishlist_references", :name => "wishlist[references]"
      assert_select "input#wishlist_title", :name => "wishlist[title]"
      assert_select "textarea#wishlist_description", :name => "wishlist[description]"
      assert_select "input#wishlist_public", :name => "wishlist[public]"
    end
  end
end
