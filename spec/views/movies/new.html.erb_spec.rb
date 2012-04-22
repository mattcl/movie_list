require 'spec_helper'

describe "movies/new" do
  before(:each) do
    assign(:movie, stub_model(Movie,
      :imdb_ref => "MyString",
      :title => "MyString",
      :year => "MyString"
    ).as_new_record)
  end

  it "renders new movie form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => movies_path, :method => "post" do
      assert_select "input#movie_imdb_ref", :name => "movie[imdb_ref]"
      assert_select "input#movie_title", :name => "movie[title]"
      assert_select "input#movie_year", :name => "movie[year]"
    end
  end
end
