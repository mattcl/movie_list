require 'spec_helper'

describe "movies/index" do
  before(:each) do
    assign(:movies, [
      stub_model(Movie,
        :imdb_ref => "Imdb Ref",
        :title => "Title",
        :year => "Year"
      ),
      stub_model(Movie,
        :imdb_ref => "Imdb Ref",
        :title => "Title",
        :year => "Year"
      )
    ])
  end

  it "renders a list of movies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Imdb Ref".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Year".to_s, :count => 2
  end
end
