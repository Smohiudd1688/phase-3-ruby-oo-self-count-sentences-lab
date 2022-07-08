require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    sentenceArray = self.split(Regexp.union([".", "!", "?"]))
    count = 0
    sentenceArray.each do |sentence|
      if sentence != "" && sentence != "." && sentence != "!" && sentence != "?"
        count += 1
      end
    end
    count
  end
end



