class DomainsController < ApplicationController

  def new
    @domain = Domain.new
  end

  def create
    @domain = Domain.new(domain_params)
    @domain.save
  end

  private

  def domain_params
    params.require(:domain).permit(:name)		
  end

end
