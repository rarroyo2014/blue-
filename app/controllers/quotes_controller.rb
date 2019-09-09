#This is my quotes controller 
class QuotesController < ApplicationController
  def index
    #I am going to store my first quote from my database into a variable called @quote. I will also edit to enable random quotes to appear rather than first
    @quote = Quote.all.sample
  end 


  def create
    @quote = Quote.create(quote_params)
    if @quote.invalid?
      flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    end
    redirect_to root_path
  end

  def about
  end 

  private

  def quote_params
    params.require(:quote).permit(:saying, :author)
  end

end 
