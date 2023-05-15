class SpecsController < ApplicationController

  before_action :set_spec, only: %i[show]

  def index
    @specs = Style.all.sort_by(&:style_num)
  end

  def show
  end

  def spec_table
    params[:style_filter].present? ? @specs = Style.all.style_search(params[:style_filter]).sort_by(&:style_num) : @specs = Style.all.sort_by(&:style_num)
  end

  private

  def set_spec
    @spec = Style.find(params[:id])
  end

end
