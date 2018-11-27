require 'spec_helper'
require 'rails_helper'
require_relative '../../app/controllers/users_controller'
require_relative '../../app/models/user'


=begin
RSpec.describe UsersController do

  describe "GET index" do
    it "get @user email" do
      user = User.create
      user_params = { :email=>"spuddy222555@gmail.com" }

      post '/users', params: {user: user_params}

    end


  end
end
=end
