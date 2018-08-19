class MeetupJob < ApplicationJob
  queue_as :default

  def perform(text)
    meetup = MeetupGroupsService.new(text)
    @result = meetup.get_data.parsed_response
  end

  after_perform do |job|
    $redis.mset("job_id", @job_id, "result", @result )
  end
end
