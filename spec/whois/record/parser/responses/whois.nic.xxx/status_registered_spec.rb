# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.xxx/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.nic.xxx.rb'

describe Whois::Record::Parser::WhoisNicXxx, "status_registered.expected" do

  before(:each) do
    file = fixture("responses", "whois.nic.xxx/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#disclaimer" do
    it do
      @parser.disclaimer.should == "Access to the .XXX WHOIS information is provided to assist persons in determining the contents of a domain name registration record in the ICM Registry database. The data in this record is provided by ICM Registry for informational purposes only, and ICM does not guarantee its accuracy. This service is intended only for query-based access. You agree that you will use this data only for lawful purposes and that, under no circumstances will you use this data to: (a) allow, enable, or otherwise support the transmission by e-mail, telephone, or facsimile of mass unsolicited, commercial advertising or solicitations to entities other than the data recipient's own existing customers; or (b) enable high volume, automated, electronic processes that send queries or data to the systems of Registry Operator, a Registrar, or ICM except as reasonably necessary to register domain names or modify existing registrations. All rights reserved. ICM reserves the right to modify these terms at any time. By submitting this query, you agree to abide by this policy."
    end
  end
  describe "#domain" do
    it do
      @parser.domain.should == "masala.xxx"
    end
  end
  describe "#domain_id" do
    it do
      @parser.domain_id.should == "D372-ICM"
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
      @parser.created_on.should == Time.parse("2011-08-09 17:48:52.556689 UTC")
    end
  end
  describe "#updated_on" do
    it do
      @parser.updated_on.should == nil
    end
  end
  describe "#expires_on" do
    it do
      @parser.expires_on.should be_a(Time)
      @parser.expires_on.should == Time.parse("2012-08-09 17:48:52.556689")
    end
  end
  describe "#registrar" do
    it do
      @parser.registrar.should be_a(_registrar)
      @parser.registrar.id.should           == "R2-ICM"
      @parser.registrar.name.should         == "Domainmonster.com"
      @parser.registrar.organization.should == "Domainmonster.com"
    end
  end
  describe "#registrant_contacts" do
    it do
      @parser.registrant_contacts.should be_a(Array)
      @parser.registrant_contacts.should have(1).items
      @parser.registrant_contacts[0].should be_a(_contact)
      @parser.registrant_contacts[0].type.should         == Whois::Record::Contact::TYPE_REGISTRANT
      @parser.registrant_contacts[0].id.should           == "C7-ICM"
      @parser.registrant_contacts[0].name.should         == "Domainmonster.com Privacy Service"
      @parser.registrant_contacts[0].organization.should == "Mesh Digital Ltd (Domainmonster.com)"
      @parser.registrant_contacts[0].address.should      == "PO Box 795"
      @parser.registrant_contacts[0].city.should         == "Godalming"
      @parser.registrant_contacts[0].zip.should          == "GU7 9GA"
      @parser.registrant_contacts[0].state.should        == "Surrey"
      @parser.registrant_contacts[0].country_code.should == "UB"
      @parser.registrant_contacts[0].phone.should        == "44.14833075"
      @parser.registrant_contacts[0].fax.should          == "+44.148330403"
      @parser.registrant_contacts[0].email.should        == "support@domainmonster.com"
    end
  end
  describe "#admin_contacts" do
    it do
      @parser.admin_contacts.should be_a(Array)
      @parser.admin_contacts.should have(1).items
      @parser.admin_contacts[0].should be_a(_contact)
      @parser.admin_contacts[0].type.should         == Whois::Record::Contact::TYPE_ADMIN
      @parser.admin_contacts[0].id.should           == "C7-ICM"
      @parser.admin_contacts[0].name.should         == "Domainmonster.com Privacy Service"
      @parser.admin_contacts[0].organization.should == "Mesh Digital Ltd (Domainmonster.com)"
      @parser.admin_contacts[0].address.should      == "PO Box 795"
      @parser.admin_contacts[0].city.should         == "Godalming"
      @parser.admin_contacts[0].zip.should          == "GU7 9GA"
      @parser.admin_contacts[0].state.should        == "Surrey"
      @parser.admin_contacts[0].country_code.should == "UB"
      @parser.admin_contacts[0].phone.should        == "44.14833075"
      @parser.admin_contacts[0].fax.should          == "+44.148330403"
      @parser.admin_contacts[0].email.should        == "support@domainmonster.com"
    end
  end
  describe "#technical_contacts" do
    it do
      @parser.technical_contacts.should be_a(Array)
      @parser.technical_contacts.should have(1).items
      @parser.technical_contacts[0].should be_a(_contact)
      @parser.technical_contacts[0].type.should         == Whois::Record::Contact::TYPE_TECHNICAL
      @parser.technical_contacts[0].id.should           == "C7-ICM"
      @parser.technical_contacts[0].name.should         == "Domainmonster.com Privacy Service"
      @parser.technical_contacts[0].organization.should == "Mesh Digital Ltd (Domainmonster.com)"
      @parser.technical_contacts[0].address.should      == "PO Box 795"
      @parser.technical_contacts[0].city.should         == "Godalming"
      @parser.technical_contacts[0].zip.should          == "GU7 9GA"
      @parser.technical_contacts[0].state.should        == "Surrey"
      @parser.technical_contacts[0].country_code.should == "UB"
      @parser.technical_contacts[0].phone.should        == "44.14833075"
      @parser.technical_contacts[0].fax.should          == "+44.148330403"
      @parser.technical_contacts[0].email.should        == "support@domainmonster.com"
    end
  end
  describe "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(2).items
      @parser.nameservers[0].should be_a(_nameserver)
      @parser.nameservers[0].name.should == "ns33.domaincontrol.com"
      @parser.nameservers[1].should be_a(_nameserver)
      @parser.nameservers[1].name.should == "ns34.domaincontrol.com"
    end
  end
end
