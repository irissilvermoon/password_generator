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

  it "should include characters in the specified character set" do
    password = PasswordGenerator.generate_password
    password.each_char { |char| PasswordGenerator::CHARACTER_SET.must_include char }
  end

  it "should always generate a different output" do
    password1 = PasswordGenerator.generate_password
    password2 = PasswordGenerator.generate_password
    
    password1.wont_equal password2
  end

end
