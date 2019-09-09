#This is my quotes controller 
class QuotesController < ApplicationController
  def index
    #I am going to store my first quote from my database into a variable called @quote. I will also edit to enable random quotes to appear rather than first
    @quote = Quote.all.sample
  end 

 def new
    @quote = Quote.new
  end
end 
