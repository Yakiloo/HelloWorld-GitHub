require_relative '../spec/spec_helper'

describe "Says 'Hello World'" do
  it "should say 'Hello World'" do
    get '/say'
    last_response.body.should == 'Hello World'
  end
end