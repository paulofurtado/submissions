# encoding: UTF-8
require 'spec_helper'
 
describe UserSessionsController, type: :controller do
  fixtures :users
  render_views
  it_should_behave_like_a_devise_controller

  before(:each) do
    @conference = FactoryGirl.create(:conference, year: 2015)
  end
  
  it "new action should render new template" do
    get :new
    expect(response).to render_template("static_pages/#{@conference.year}_home")
  end
end
