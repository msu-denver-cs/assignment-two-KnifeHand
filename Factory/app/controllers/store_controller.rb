class StoreController < ApplicationController
  def index
    @parts = Part.order(:title)
  end
end
