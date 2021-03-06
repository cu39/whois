# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.dns.lu/property_nameservers_with_ip.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.dns.lu.rb'

describe Whois::Record::Parser::WhoisDnsLu, "property_nameservers_with_ip.expected" do

  before(:each) do
    file = fixture("responses", "whois.dns.lu/property_nameservers_with_ip.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(3).items
      @parser.nameservers[0].should be_a(_nameserver)
      @parser.nameservers[0].name.should == "ns1.arbed.lu"
      @parser.nameservers[0].ipv4.should == "194.154.218.10"
      @parser.nameservers[1].should be_a(_nameserver)
      @parser.nameservers[1].name.should == "ns1.pt.lu"
      @parser.nameservers[1].ipv4.should == nil
      @parser.nameservers[2].should be_a(_nameserver)
      @parser.nameservers[2].name.should == "ns2.arbed.lu"
      @parser.nameservers[2].ipv4.should == "194.154.218.12"
    end
  end
end
