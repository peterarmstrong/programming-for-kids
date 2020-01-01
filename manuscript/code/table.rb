def say(str)
  `say #{str}`
  str
end

def putsay(str)
  puts str
  say str
end

putsay "Welcome to table!"
putsay "We are going to learn times tables."
putsay "What number do you want to stop at?"
max = gets.to_i
num_right = 0
num_questions = 0
i = 2
while i <= max
  j = 2
  while j <= max
    putsay "What is #{i} times #{j}?"
    answer = gets.to_i
    num_questions += 1
    right = i*j
    if answer == right
      putsay "Yay!"
      num_right += 1
    else
      putsay "No, #{i} times #{j} is #{right}."
    end
    j += 2
  end
  i += 2
end
putsay "You got #{num_right} out of #{num_questions}."