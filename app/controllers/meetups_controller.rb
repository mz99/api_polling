class MeetupsController < ApplicationController
  require 'JSON'

  def index
      $result = $redis.get("result" )
  end

  def new
  end

  def create
    job = MeetupJob.perform_later(meetup_params)
    # Call meetups.coffee JS to start the polling, when poll succeeds, redirect to index action
  end


  private
  def meetup_params
    params.require(:meetup).permit(:text)
  end

end
