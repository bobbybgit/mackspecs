class SpecsController < ApplicationController

  before_action :set_spec, only: %i[show]
  before_action :filter_specs, only: %i[spec_table]

  def index
    @specs = Style.all.sort_by(&:style_num)
  end

  def show
  end

  def spec_table  
  end

  private

  def set_spec
    @spec = Style.find(params[:id])
  end

  def filter_specs
    
    case params[:column]
    when "name"
      @specs = search_specs.order(:name)
    when "brand"
      @specs = search_specs.order(:brand)
    when "gender"
      @specs = search_specs.order(:gender)
    when "created"
      @specs = search_specs.order(:created_at)
    else
      @specs = search_specs.order(:style_num)
      pp params[:column]
    end
    @specs = @specs.reverse if params[:direction] == "up" 
  end

  def search_specs
    params[:style_filter].present? ? Style.all.style_search(params[:style_filter]) : Style.all
  end

end
