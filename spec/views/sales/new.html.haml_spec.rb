require 'spec_helper'

describe "sales/new.html.haml" do
  before(:each) do
    assign(:sale, stub_model(Sale,
      :total => 1
    ).as_new_record)
  end

  it "renders new sale form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => sales_path, :method => "post" do
      assert_select "input#sale_total", :name => "sale[total]"
    end
  end
end
