class MorseCode
  attr_reader :morse_code

  def initialize
    @morse_code = {
      "A" => ".-", "B" => "-...", "C" => "-.-.", "D" => "-..", "E" => ".", "F" => "..-.", "G" => "--.",
      "H" => "....", "I" => "..", "J" => ".---", "K" => "-.-", "L" => ".-..", "M" => "--", "N" => "-.",
      "O" => "---", "P" => ".--.", "Q" => "--.-", "R" => ".-.", "S" => "...", "T" => "-",
      "U" => "..-", "V" => "...-", "W" => ".--", "X" => "-..-", "Y" => "-.--", "Z" => "--..", " " => "/" }
  end

  def line
    puts "--" * 10
  end

  def morse_alphabet
    puts "Morse Code Alphabet"
    line
    morse_code.each { |normal, morse| puts "Letter '#{normal}' is  " + "#{morse}".rjust(4) + "  in Morse Code" }
    #some extra spaces and rjust for clarity
    puts # adding an empty line
  end

  def magic
    line
    puts "Here Magic happens"
    line
    puts
    puts 'Input some text to convert it to Morse Code: '
    puts
    normal_input = gets.chomp.upcase.chars
    puts
    line
    puts 'Your morse code: '
    line
    puts
    normal_input.each { |normal| print "#{morse_code[normal]} " }
    puts "\n\n"
  end

  def magic2
    line
    puts "Here Magic happens"
    line
    puts
    puts 'Input Morse Code to have it translated, enter / as a space between words: '
    puts
    morse_input = gets.chomp.strip.split(' ')
    puts
    line
    puts 'You entered: '
    line
    puts
    morse_input.each { |morse| print "#{morse_code.key(morse)} " }
    puts "\n\n"
  end

  def menu
    morse = MorseCode.new #declaring class so I can use class methods inside the menu
    loop do
      puts "Press [M] to see the Morse Code alphabet"
      puts "Press [T] to see Morse Code translation of the text you entered"
      puts "Press [Q] to see your Morse Code input translated into 'normal' language"
      puts "Press [E] to exit"
      answer = gets.chomp.upcase
      if answer == 'M'
        morse.morse_alphabet
        elsif
        answer == 'T'
        morse.magic
        elsif
        answer == 'Q'
        morse.magic2
        else
        answer == "E"
        puts 'Thank you for using my awesome program, the fee for each letter entered is $1.00'
        puts
        break
        end
      end
    end
  end

morse = MorseCode.new
puts
puts "Welcome to the Morse Code translator"
puts

morse.menu
