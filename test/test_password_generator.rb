require 'helper'

describe PasswordGenerator do
  it 'should let the user call generate password' do
    password = PasswordGenerator.generate_password
  end

  it "should return a string" do
    password = PasswordGenerator.generate_password
    assert_instance_of String, password
  end

  it "should generate a 20 character password with no arguments" do 
    password = PasswordGenerator.generate_password
    password.length.must_equal(20)
  end

  it "should take an argument of password length" do
    password = PasswordGenerator.generate_password(16)
    password.length.must_equal(16)
  end



end
