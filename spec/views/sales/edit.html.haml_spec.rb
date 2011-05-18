require 'spec_helper'

describe "sales/edit.html.haml" do
  before(:each) do
    @sale = assign(:sale, stub_model(Sale,
      :total => 1
    ))
  end

  it "renders the edit sale form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sales_path(@sale), :method => "post" do
      assert_select "input#sale_total", :name => "sale[total]"
    end
  end
end
