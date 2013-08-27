class PagesController < ApplicationController
  def home
    @meetups = Meetup.most_recent
  end
end
