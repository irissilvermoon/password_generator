require 'helper'

describe PasswordGenerator do
  it 'should let the user call generate password' do
    password = PasswordGenerator.generate_password
  end

  it "should return a string" do
    password = PasswordGenerator.generate_password
    assert_instance_of String, password
  end

end
