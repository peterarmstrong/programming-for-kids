def cls
  print `clear`
end

def say(str)
  if str == " "
    `say "space"`
  else
    `say #{str}`
  end
  str
end

def putsay(str)
  puts str
  say str
end

def spell(str)
  str.split("").each do |char|
    say char
  end
  str
end

words = File.readlines "words.txt"
words.map! {|line| line.strip}
words.reject! {|line| line.empty?}
num_words = words.length
cls
putsay "Welcome to Spelt!"
putsay "We will spell #{num_words} words."
num_right = 0
words.each do |word|
  say "spell #{word}"
  answer = gets.strip
  if word == answer
    num_right = num_right + 1
    say "awesome"
    cls
  else
    while word != answer
      say "The correct spelling is"
      puts word
      spell word
      say "not"
      spell answer
      cls
      say "try again"
      say "spell #{word}"
      answer = gets.strip
    end
    say "great job"
  end
end
cls
putsay "You got #{num_right}" +
" out of #{num_words}!"