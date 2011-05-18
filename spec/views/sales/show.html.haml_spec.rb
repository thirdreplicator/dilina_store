require 'spec_helper'

describe "sales/show.html.haml" do
  before(:each) do
    @sale = assign(:sale, stub_model(Sale,
      :total => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
