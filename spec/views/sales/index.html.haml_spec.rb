require 'spec_helper'

describe "sales/index.html.haml" do
  before(:each) do
    assign(:sales, [
      stub_model(Sale,
        :total => 1
      ),
      stub_model(Sale,
        :total => 1
      )
    ])
  end

  it "renders a list of sales" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
