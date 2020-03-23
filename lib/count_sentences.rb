require 'pry'

class String

  def sentence?
   self.end_with?(".")
     
  end

  def question?
  self.end_with?("?")
  end

  def exclamation?
self.end_with?("!")
  end

  def count_sentences
    sen = ""
    sen = self.split(" ")
index_counter = []
sen.each_with_index do |value, index|
if value.sentence? || value.question? || value.exclamation?
index_counter << index
end
end
return index_counter.count
	

end
end