class PagesController < ApplicationController
  def home
    @members = Member.list.shuffle
    @meetups = Meetup.most_recent.reverse
  end
end
