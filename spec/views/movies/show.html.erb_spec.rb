require 'spec_helper'

describe "movies/show" do
  before(:each) do
    @movie = assign(:movie, stub_model(Movie,
      :imdb_ref => "Imdb Ref",
      :title => "Title",
      :year => "Year"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Imdb Ref/)
    rendered.should match(/Title/)
    rendered.should match(/Year/)
  end
end
