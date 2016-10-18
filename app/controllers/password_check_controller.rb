class PasswordCheckController < ApplicationController

  # def initialize
  #   @username = username
  #   @password = password
  # end

  def checker
    @username = params[:UNbox]
    @password = params[:PWbox]

    if @password != @username && @password.length >= 6 && (@password.include?("!") || @password.include?("#") || @password.include?("$")) && @password != "password"
      @results = "valid!"
    else
      @results = "invalid :("
    end

    if @username != @password && @username.length >= 6 && (!@username.include?("!") || !@username.include?("#") || !@username.include?("$"))

      @results_user = "valid!"
    else
      @results_user = "invalid :("
    end
  end


end
