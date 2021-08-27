class Api::V1::PropertiesController < ApplicationController
  # GET /properties/
  def index
    render json: Property.all.select(
      %i[ id
          name
          type_of_property
          city
          country]
    )
  end

  # GET /properties/1
  def show
    render json: Property.find(params[:id])
  end
end
