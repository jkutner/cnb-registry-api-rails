class Api::V1::BuildpacksController < ApplicationController


  # GET /buildpacks/:namespace/:name
  def index
    render json: {namespace: params[:namespace], name: params[:name]}
  end

  # GET /buildpacks/:namespace/:name/:version
  def show
    render json: {namespace: @namespace, name: @name, version: @version}
  end
end
