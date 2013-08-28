class PagesController < ApplicationController
  def home
    @members = Member.list.shuffle
    @meetups = Meetup.most_recent
  end
end
