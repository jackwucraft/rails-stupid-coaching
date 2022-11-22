class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @aaa = params[:bbb]
    if @aaa.blank?
      @answer = "I can't hear you!"
    elsif @aaa =~ /i am going to work/i
      @answer = "Great!"
    elsif @aaa.ends_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
