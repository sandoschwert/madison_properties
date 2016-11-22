class DataImportController < ApplicationController
  def new
  end

  def create
    if params[:file]
      Parcel.import(params[:file])
    end
    redirect_to root_url
  end
end
