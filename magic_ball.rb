current_path = File.dirname(__FILE__)
greetings_path = current_path + "/data/greetings.txt"
answers_path = current_path + "/data/answers.txt"

if File.exist?(answers_path)
  f = File.new(answers_path, "r:UTF-8")
  answers = f.readlines
  f.close
else
  abort "Вы сломали волшебный шар! Обратитесь к разработчику: он зарядит его манной."
end

if File.exist?(greetings_path)
  f = File.new(greetings_path, "r:UTF-8")
  greetings = f.readlines
  f.close
  puts greetings.sample
else
  puts "Здравствуйте!"
end

sleep 2
puts answers.sample