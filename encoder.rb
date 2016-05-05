# This module provides a framework for message digest libraries.
require 'digest'

puts 'Введите слово или фразу для шифрования:'
input = STDIN.gets.chomp

puts "Каким способом зашифровать:\n1. MD5\n2. SHA1\n3. SHA2"
encode_mode = STDIN.gets.to_i

case encode_mode
  when 1
    puts Digest::MD5.hexdigest(input)
  when 2
    puts Digest::SHA1.hexdigest(input)
  when 3
    puts Digest::SHA2.hexdigest(input)
end