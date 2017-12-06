require 'spec_helper'
require File.expand_path('../../lib/customer.rb', __FILE__)

describe Customer do
  it "cria customer" do
      name = "Marty"
      surname = "McFly"
      title = "Sr."
      customer = Customer.new(name: name, surname: surname, title: title)
      expect(customer.name).to eq name
      expect(customer.surname).to eq surname
      expect(customer.title).to eq title
    end

  it "full_name" do
    customer = cria_customer
    expect(customer.full_name).to eq "#{customer.surname}, #{customer.name}"
  end

  it "full_qualified_name" do
    customer = cria_customer
    expect(customer.full_qualified_name).to eq "#{customer.title} #{customer.name} #{customer.surname}"
  end

  def cria_customer(name="Marty", surname="McFly", title="Sr.")
    Customer.new(name: name, surname: surname, title: title)
  end
end
