module PasswordGenerator

  CHARACTER_SET = "".tap do |string|
    string << ('a'..'z').to_a.inject(:+)
    string << ('A'..'Z').to_a.inject(:+)
    string << (0..9).to_a.inject(:+)
    string << '!@#$%^&*()_+='
  end

  def self.generate_password(length = 20)
    string = ''

    length.times do |i| 
      max_index = CHARACTER_SET.length
      index = rand(max_index)
      character = CHARACTER_SET[index]
      string << character
    end

    string
  end

end
