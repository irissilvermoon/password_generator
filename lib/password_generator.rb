module PasswordGenerator

  CHARACTER_SET = "".tap do |string|
    string << ('a'..'z').map.to_s
    string << ('A'..'Z').map.to_s
    string << (0..9).map.to_s
    string << '!@#$%^&*()_+='
  end

  def self.generate_password(length = 20)
    'd' * length
  end

end
