class ElectionsController < ApplicationController

  http_basic_authenticate_with name: "admin", password: "password", except: [:index, :show]

  def index
    @elections = Election.all
  end

  def show
    @election = Election.find(params[:id])
  end

  def new
    @election = Election.new
  end

  def edit
    @election = Election.find(params[:id])
  end

  def create
    @election = Election.new(election_params)

    if @election.save
      redirect_to @election
    else
      render 'new'
    end
  end

  def destroy
    @election = Election.find(params[:id])
    @election.destroy

    redirect_to elections_path
  end

  def update
    @election = Election.find(params[:id])

    if @election.update(election_params)
      redirect_to @election
    else
      render 'edit'
    end
  end

  private
  def election_params
    params.require(:election).permit(:title, :text)
  end
end
