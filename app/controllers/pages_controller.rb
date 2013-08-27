class PagesController < ApplicationController
  def home
    @member_images = Dir.entries(Rails.root.join('app','assets','images','members')).select {|fname| fname !~ /^\./ }.map {|fname| "members/#{fname}" }.shuffle
    @meetups = Meetup.most_recent
  end
end
