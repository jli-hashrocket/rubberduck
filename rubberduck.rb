class RubberDuck
  def ask
    solution = false
    puts "What problem are you having in your code?"
    problem = gets.chomp
    puts "So, the problem is '#{problem}'. You must backtrack. What does the line directly above do?"
    response = gets.chomp
    responses = [response]
    while solution == false
      puts "Have you solved your problem yet? Enter 'Y' or 'N'"
      solved = gets.chomp
      if solved == 'Y' || solved == 'y'
        puts "I'm glad I could help!"
        solution = true
      elsif solved == 'N' || solved== 'n'
        puts "And what does the line above that do?"
        another_response = gets.chomp
        solution = false
        responses.push another_response
      else
        puts "Sorry, that's an invalid response"
        solution = false
      end
    end
    puts "Here is a list of your responses:"
    responses.each do |res|
      puts res
     File.open('responses.txt','a+') do |log|
      log.puts res
      puts 
     end
    end
  end
end

question = RubberDuck.new
question.ask
