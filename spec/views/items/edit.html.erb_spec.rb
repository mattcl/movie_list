require 'spec_helper'

describe "items/edit" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :wishlist => nil,
      :movie => nil,
      :owned => false,
      :sort_order => 1
    ))
  end

  it "renders the edit item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => items_path(@item), :method => "post" do
      assert_select "input#item_wishlist", :name => "item[wishlist]"
      assert_select "input#item_movie", :name => "item[movie]"
      assert_select "input#item_owned", :name => "item[owned]"
      assert_select "input#item_sort_order", :name => "item[sort_order]"
    end
  end
end
