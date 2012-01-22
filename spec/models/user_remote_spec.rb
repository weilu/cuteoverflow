require 'spec_helper'

describe User do
  it "finds user by id" do
    VCR.use_cassette('synopsis') do
      subject { User.find(429288) }

      should_not be_nil
    end
  end
end