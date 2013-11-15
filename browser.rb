require 'uri'

class Browser
  def initialize(question)
    @question = question
  end

  def browse
    #replace all spaces with + 
    #delete all special characters besides '+', letters, and numbers
    
    # format_question = @question.gsub!(/[\s*]/, "+") 
    system("open", url) 
  end
  def url
    ("http://www.google.com/search?q=#{URI.escape(@question)}")
  end
end


puts "What quesiton do you have?"
question = gets.chomp
browser = Browser.new(question)
browser.browse
