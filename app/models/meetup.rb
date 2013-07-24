class Meetup
  def self.group_id; '347566' end # bmore-on-rails
  def self.update
    # go to meetup.com, get upcoming meetups
    # see http://www.meetup.com/meetup_api/docs/2/events/
    connection ||= Faraday.new(url: 'https://api.meetup.com') do |faraday|
      faraday.adapter  Faraday.default_adapter
      faraday.response :logger
    end
    response = connection.get(
      "/2/events.json", {
        group_id: group_id,
        status: 'upcoming',
        time: ',5w', # from now until 5 weeks from now
        text_format: 'plain',
        key: ENV['MEETUP_PERSONAL_API_KEY'],
      }
    ).body
    results = JSON.parse(response)['results']
    # todo insert new events into the db (id will be unique)
    puts results.inspect

  end
end