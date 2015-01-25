class PagesController < ApplicationController
  def home
    @members = Member.list.shuffle
    @meetups = Meetup.upcoming.limit(3)
  end
end
