class Hiragana < ApplicationRecord
  def self.random_kana
    Hiragana.all.sample
  end

  def self.wrong_answers
    Hiragana.all.sample(3).uniq
  end

  def self.possible_answers(correct_answer, wrong_answers)
    possible_answers = wrong_answers << correct_answer
    possible_answers.shuffle
  end
end
