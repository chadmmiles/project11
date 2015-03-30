class StaticController < ApplicationController
  before_action :only_allow_signed_in_users, except: [:index, :show]
  def home
  end

  def about
  end

  def cats
    @cats = CatAPI.new.get_images(results_per_page: params[:number_of_cats] || 1)
  end 
end
