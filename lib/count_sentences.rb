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

        self.split(/[.?!]+/).grep(/\S/).count  #grep will remove any space at end of sentences to count correctly 

  end

end
