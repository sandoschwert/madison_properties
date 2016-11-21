class DataImportController < ApplicationController
  def new
  end

  def create
    Parcel.import(params[:file])
  end
end
