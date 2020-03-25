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
     self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
   end
  # def count_sentences
  #   the_count = self.split
  #   if the_count.count == 0
  #     0
  #   else the_count.count > 0
  #     the_count.count
  #   end
  # end
end
