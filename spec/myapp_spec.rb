require 'spec_helper'

describe "MyApp" do
  include Rack::Test::Methods

  it "should return status code 200" do
    get '/'
    last_response.status.should == 200
  end

end




