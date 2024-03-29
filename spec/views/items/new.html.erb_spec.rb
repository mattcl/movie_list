require 'spec_helper'

describe "items/new" do
  before(:each) do
    assign(:item, stub_model(Item,
      :wishlist => nil,
      :movie => nil,
      :owned => false,
      :sort_order => 1
    ).as_new_record)
  end

  it "renders new item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => items_path, :method => "post" do
      assert_select "input#item_wishlist", :name => "item[wishlist]"
      assert_select "input#item_movie", :name => "item[movie]"
      assert_select "input#item_owned", :name => "item[owned]"
      assert_select "input#item_sort_order", :name => "item[sort_order]"
    end
  end
end
