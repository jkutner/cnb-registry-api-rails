class Api::V1::BuildpacksController < ApplicationController

  # GET /buildpacks/:namespace/:name
  def index
    buildpack_params = params.permit(:name, :namespace)
    render json: {
      namespace: buildpack_params[:namespace],
      name: buildpack_params[:name]
    }
  end

  # GET /buildpacks/:namespace/:name/:version
  def show
    buildpack_params = params.permit(:name, :namespace, :version)
    render json: {
      namespace: buildpack_params[:namespace],
      name: buildpack_params[:name],
      version: buildpack_params[:version]
    }
  end
end
