# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.centralnic.com/jpn.com/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.centralnic.com.rb'

describe Whois::Record::Parser::WhoisCentralnicCom, "status_registered.expected" do

  before(:each) do
    file = fixture("responses", "whois.centralnic.com/jpn.com/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#disclaimer" do
    it do
      @parser.disclaimer.should == "This whois service is provided by CentralNic Ltd and only contains information pertaining to Internet domain names we have registered for our customers. By using this service you are agreeing (1) not to use any information presented here for any purpose other than determining ownership of domain names, (2) not to store or reproduce this data in any way, (3) not to use any high-volume, automated, electronic processes to obtain data from this service. Abuse of this service is monitored and actions in contravention of these terms will result in being permanently blacklisted. All data is (c) CentralNic Ltd https://www.centralnic.com/"
    end
  end
  describe "#domain" do
    it do
      @parser.domain.should == "koi.jpn.com"
    end
  end
  describe "#domain_id" do
    it do
      @parser.domain_id.should == "CNIC-DO492866"
    end
  end
  describe "#referral_whois" do
    it do
      lambda { @parser.referral_whois }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#referral_url" do
    it do
      lambda { @parser.referral_url }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#status" do
    it do
      @parser.status.should == ["OK"]
    end
  end
  describe "#available?" do
    it do
      @parser.available?.should == false
    end
  end
  describe "#registered?" do
    it do
      @parser.registered?.should == true
    end
  end
  describe "#created_on" do
    it do
      @parser.created_on.should be_a(Time)
      @parser.created_on.should == Time.parse("2007-06-29 13:42:35 UTC")
    end
  end
  describe "#updated_on" do
    it do
      @parser.updated_on.should be_a(Time)
      @parser.updated_on.should == Time.parse("2011-08-15 09:43:37 UTC")
    end
  end
  describe "#expires_on" do
    it do
      @parser.expires_on.should be_a(Time)
      @parser.expires_on.should == Time.parse("2013-06-29 23:59:59 UTC")
    end
  end
  describe "#registrar" do
    it do
      @parser.registrar.should be_a(_registrar)
      @parser.registrar.id.should           == "I6467"
      @parser.registrar.name.should         == nil
      @parser.registrar.organization.should == "Webfusion"
      @parser.registrar.url.should          == "http://www.123-reg.co.uk"
    end
  end
  describe "#registrant_contacts" do
    it do
      @parser.registrant_contacts.should be_a(Array)
      @parser.registrant_contacts.should have(1).items
      @parser.registrant_contacts[0].should be_a(_contact)
      @parser.registrant_contacts[0].type.should          == Whois::Record::Contact::TYPE_REGISTRANT
      @parser.registrant_contacts[0].id.should            == "H1090485"
      @parser.registrant_contacts[0].name.should          == "deron simons"
      @parser.registrant_contacts[0].organization.should  == nil
      @parser.registrant_contacts[0].address.should       == "Select garden centre\nsundridge\nsevenoaks"
      @parser.registrant_contacts[0].city.should          == "kent"
      @parser.registrant_contacts[0].zip.should           == "TN14 6ED"
      @parser.registrant_contacts[0].state.should         == nil
      @parser.registrant_contacts[0].country.should       == nil
      @parser.registrant_contacts[0].country_code.should  == "GB"
      @parser.registrant_contacts[0].phone.should         == "+44.7957842260"
      @parser.registrant_contacts[0].fax.should           == nil
      @parser.registrant_contacts[0].email.should         == "deronsimons@aol.com"
    end
  end
  describe "#admin_contacts" do
    it do
      @parser.admin_contacts.should be_a(Array)
      @parser.admin_contacts.should have(1).items
      @parser.admin_contacts[0].should be_a(_contact)
      @parser.admin_contacts[0].type.should          == Whois::Record::Contact::TYPE_ADMIN
      @parser.admin_contacts[0].id.should            == "H312617"
      @parser.admin_contacts[0].name.should          == "deron simons"
      @parser.admin_contacts[0].organization.should  == "deron simons"
      @parser.admin_contacts[0].address.should       == "Select garden centre\nsundridge\nsevenoaks"
      @parser.admin_contacts[0].city.should          == "kent"
      @parser.admin_contacts[0].zip.should           == "TN14 6ED"
      @parser.admin_contacts[0].state.should         == nil
      @parser.admin_contacts[0].country.should       == nil
      @parser.admin_contacts[0].country_code.should  == "GB"
      @parser.admin_contacts[0].phone.should         == "+44.7957842260"
      @parser.admin_contacts[0].fax.should           == nil
      @parser.admin_contacts[0].email.should         == "deronsimons@aol.com"
    end
  end
  describe "#technical_contacts" do
    it do
      @parser.technical_contacts.should be_a(Array)
      @parser.technical_contacts.should have(1).items
      @parser.technical_contacts[0].should be_a(_contact)
      @parser.technical_contacts[0].type.should          == Whois::Record::Contact::TYPE_TECHNICAL
      @parser.technical_contacts[0].id.should            == "I6467"
      @parser.technical_contacts[0].name.should          == "Domain Admin"
      @parser.technical_contacts[0].organization.should  == "Webfusion"
      @parser.technical_contacts[0].address.should       == "5 Roundwood Avenue\nStockley Park\nUxbridge"
      @parser.technical_contacts[0].city.should          == "Middlesex"
      @parser.technical_contacts[0].zip.should           == "UB11 1FF"
      @parser.technical_contacts[0].state.should         == nil
      @parser.technical_contacts[0].country.should       == nil
      @parser.technical_contacts[0].country_code.should  == "GB"
      @parser.technical_contacts[0].phone.should         == "+44.8712309525"
      @parser.technical_contacts[0].fax.should           == "+44.8701650437"
      @parser.technical_contacts[0].email.should         == "hosting-domains@webfusion.com"
    end
  end
  describe "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(2).items
      @parser.nameservers[0].should be_a(_nameserver)
      @parser.nameservers[0].name.should == "ns1.diywebbuilder.org"
      @parser.nameservers[1].should be_a(_nameserver)
      @parser.nameservers[1].name.should == "ns2.diywebbuilder.org"
    end
  end
end
