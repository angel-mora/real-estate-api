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
    render json: @property = Property.find(params[:id])
  end

  # POST /properties
  def create
    @property = Property.new(property_params)
    if @property.save
      render json: @property, status: :created
    else
      render json: @property.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /properties/1
  def update
    if @property.update(property_params)
      render json: @property, status: :ok
    else
      render json: @property.errors, status: :unprocessable_entity
    end
  end

  # DELETE /properties/1
  def destroy
    @property.destroy
    head 204
  end

  private

  # Only allow a trusted parameter allowlist through.
  def property_params
    params
      .require(:properties)
      .permit(
        :name,
        :type_of_property,
        :street,
        :external_number,
        :internal_number,
        :neighborhood,
        :city,
        :country,
        :rooms,
        :bathrooms,
        :comments
      )
  end
end
