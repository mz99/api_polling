class MeetupGroupsService
  include HTTParty
  base_uri 'api.meetup.com'

  def initialize(text)
    @options = { query: { country: 'de', location: 'munich', text: text, page: 10, key: ENV["MEETUP_API_KEY"]} }
  end

  def get_data
    self.class.get('/find/groups', @options)
  end
end
