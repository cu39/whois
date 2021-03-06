# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.eu/property_nameservers.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.eu.rb'

describe Whois::Record::Parser::WhoisEu, "property_nameservers.expected" do

  before(:each) do
    file = fixture("responses", "whois.eu/property_nameservers.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(5).items
      @parser.nameservers[0].should be_a(_nameserver)
      @parser.nameservers[0].name.should == "a.nic.eu"
      @parser.nameservers[1].should be_a(_nameserver)
      @parser.nameservers[1].name.should == "l.nic.eu"
      @parser.nameservers[2].should be_a(_nameserver)
      @parser.nameservers[2].name.should == "p.nic.eu"
      @parser.nameservers[3].should be_a(_nameserver)
      @parser.nameservers[3].name.should == "ns1.eurid.eu"
      @parser.nameservers[3].ipv4.should == "91.220.191.220"
      @parser.nameservers[3].ipv6.should == nil
      @parser.nameservers[4].should be_a(_nameserver)
      @parser.nameservers[4].name.should == "ns2.eurid.eu"
      @parser.nameservers[4].ipv4.should == "195.234.53.220"
      @parser.nameservers[4].ipv6.should == nil
    end
  end
end
