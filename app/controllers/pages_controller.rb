class PagesController < ApplicationController
  def home
    @members = Member.list.shuffle
    @member_images = @members.map {|member| "members/#{member.avatar_file}" }
    @meetups = Meetup.most_recent
  end
end
