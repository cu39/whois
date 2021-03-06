# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.educause.edu/property_registrant_without_zip.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.educause.edu.rb'

describe Whois::Record::Parser::WhoisEducauseEdu, "property_registrant_without_zip.expected" do

  before(:each) do
    file = fixture("responses", "whois.educause.edu/property_registrant_without_zip.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#registrant_contacts" do
    it do
      @parser.registrant_contacts.should be_a(Array)
      @parser.registrant_contacts.should have(1).items
      @parser.registrant_contacts[0].should be_a(_contact)
      @parser.registrant_contacts[0].type.should         == Whois::Record::Contact::TYPE_REGISTRANT
      @parser.registrant_contacts[0].name.should         == nil
      @parser.registrant_contacts[0].organization.should == "The American University of the Caribbean School of Medicine"
      @parser.registrant_contacts[0].address.should      == "c/o Campbell Corporate Services, Ltd.\nScotiabank Building, P. O. Box 268"
      @parser.registrant_contacts[0].city.should         == "Grand Cayman"
      @parser.registrant_contacts[0].zip.should          == nil
      @parser.registrant_contacts[0].state.should        == nil
      @parser.registrant_contacts[0].country.should      == "CAYMAN ISLANDS"
    end
  end
end
