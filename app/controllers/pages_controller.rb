class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @random_hiragana = Hiragana.random_kana
    wrong_answers = Hiragana.wrong_answers
    wrong_answers = Hiragana.wrong_answers while wrong_answers.include?(@random_hiragana)
    @possible_answers = Hiragana.possible_answers(@random_hiragana, wrong_answers)
  end
end
