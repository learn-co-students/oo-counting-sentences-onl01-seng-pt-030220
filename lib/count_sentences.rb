require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    #self.scan(/[^.\!?]+/).map(&:strip).count
    
    self.split(/\.|\?|\!/).delete_if{|word| word.size < 2}.size
    
    # scan has regex to split string and strip will remove trailing spaces.
    
    
  end
end