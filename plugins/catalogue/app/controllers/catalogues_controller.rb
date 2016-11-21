class CataloguesController < ApplicationController
  def index
    @catalogues = Catalogue.all
  end

  def new
    @catalogue = Catalogue.new
  end

  def create
    @catalogue = Catalogue.new(catalogue_params)

    if @catalogue.save
      redirect_to catalogues_path
    else
      redirect_to new_catalogues_path
    end
  end

  def edit
    @catalogue = Catalogue.find(params[:id])
  end

  def update
    @catalogue = Catalogue.find(params[:id])

    if @catalogue.update_attributes(catalogue_params)
      redirect_to catalogues_path
    else
      render 'edit'
    end
  end

  def destroy
    @catalogue = Catalogue.find(params[:id])

    @catalogue.delete
    redirect_to catalogues_path
  end

  private

  def catalogue_params
    params.require(:catalogue).permit(:role, :activity, :hst)
  end
end
