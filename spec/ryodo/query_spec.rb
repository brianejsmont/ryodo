# encoding: utf-8
require File.expand_path("../../spec_helper.rb", __FILE__)

describe Ryodo::Query do

  before do
    @raw_query = "example.jp"
    @query     = ["jp","example"]
  end

  let(:rquery) { described_class.new(@raw_query) }

  it "creates a new query instance" do
    query = described_class.new(@raw_query)
    query.instance_variables.should include(:@query)
  end

  context "#new raises" do

    it "if no query is given" do
      expect{ described_class.new }.to raise_error
    end

    it "if query is nil" do
      expect{ described_class.new(nil) }.to raise_error(Ryodo::QueryError)
    end

    it "if query is an empty string" do
      expect{ described_class.new("") }.to raise_error(Ryodo::QueryError)
    end

    it "if query is not a string" do
      expect{ described_class.new([]) }.to raise_error(Ryodo::QueryError)
    end

  end

  context "#build_query sets a query array which is easily applyable" do
    it "single TLD" do
      raw_query = "jp"
      obj = described_class.new(raw_query)
      obj.instance_variable_get(:@query).should == ["jp"]
    end

    it "simple domain (example.com)" do
      raw_query = "example.com"
      obj = described_class.new(raw_query)
      obj.instance_variable_get(:@query).should == ["com", "example"]
    end

    it "domain + subdomain (www.example.com)" do
      raw_query = "www.example.com"
      obj = described_class.new(raw_query)
      obj.instance_variable_get(:@query).should == ["com", "example", "www"]
    end

    it "FQDN (www.example.com.)" do
      raw_query = "www.example.com."
      obj = described_class.new(raw_query)
      obj.instance_variable_get(:@query).should == ["com", "example", "www"]
    end

    it "FQDN, reverse order (.com.example.www)" do
      raw_query = ".com.example.www"
      obj = described_class.new(raw_query)
      obj.instance_variable_get(:@query).should == ["com", "example", "www"]
    end

  end

end