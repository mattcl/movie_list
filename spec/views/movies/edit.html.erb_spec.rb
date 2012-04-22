require 'spec_helper'

describe "movies/edit" do
  before(:each) do
    @movie = assign(:movie, stub_model(Movie,
      :imdb_ref => "MyString",
      :title => "MyString",
      :year => "MyString"
    ))
  end

  it "renders the edit movie form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => movies_path(@movie), :method => "post" do
      assert_select "input#movie_imdb_ref", :name => "movie[imdb_ref]"
      assert_select "input#movie_title", :name => "movie[title]"
      assert_select "input#movie_year", :name => "movie[year]"
    end
  end
end
