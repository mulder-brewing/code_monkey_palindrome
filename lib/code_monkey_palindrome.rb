require "code_monkey_palindrome/version"

module Palindrome

  #Returns true for a palindrome, false otherwise.
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

    #Returns content for palindrome testing.
    def processed_content
      self.to_s.scan(/[a-z0-9]/i).join.downcase
    end
end

class String
  include Palindrome
end

class Integer
  include Palindrome
end
