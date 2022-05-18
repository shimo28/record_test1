class TweetsController < ApplicationController
  def index
    @tests = Tweet.all
    if @tests.present?
      @test = Tweet.last
      binding.pry
      if @test.year_record == Time.now.year && @test.month_record == Time.now.month && @test.day_record == Time.now.day
        @time = @test
        if params[:id].present?
          @test = Tweet.find(params[:id]).last
        end
      end
      @test = Tweet.new
    end
  end

  def create
    @test = Tweet.new(timerecord_params)
    @test.save
    redirect_to root_path
  end
  def update
    @test = Tweet.new(timerecord_params)
    @test.update
    redirect_to root_path
  end

  private
  def timerecord_params
    params.permit(:time_record, :year_record, :month_record, :day_record)
  end
end
