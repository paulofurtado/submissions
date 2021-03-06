# encoding: UTF-8
require 'spec_helper'

describe Track, type: :model do
  context "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :description }
  end

  context "associations" do
    it { should belong_to :conference }
    it { should have_many :sessions }
    it { should have_many(:track_ownerships).class_name('Organizer') }
    it { should have_many(:organizers).through(:track_ownerships) }
  end

  it "should determine if it's experience report" do
    track = FactoryGirl.build(:track, title: 'tracks.experience_reports.title')
    expect(track).to be_experience_report
    track = FactoryGirl.build(:track, title: 'tracks.management.title')
    expect(track).to_not be_experience_report
  end
end
