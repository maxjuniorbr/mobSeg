class MetierValuesController < ApplicationController
  def index
    render json: Metier.select(:id, :value).terms_for(params[:term]).collect { |p| { :value => p.id, :label => p.value } }.compact
  end
end
