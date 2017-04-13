class SearchController < ApplicationController
  def index
    @zipcode = params[:search]
    @stores  = Stores.find_stores_by_zip(@zipcode)
  end
end
