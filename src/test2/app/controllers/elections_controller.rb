# Project name: SOLVER
# Description: Create webapp that encourages students to vote and register to vote. Presents information
# about how to register and vote, and list of upcoming elections and candidates for those elections.
# Filename: elections_controller
# Description: Controller for election MVC structure
# Last modified on: 11/24/2019


class ElectionsController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index] #authenticate user before all actions

  http_basic_authenticate_with name: "admin", password: "password", except: [:index, :show] #restrict view of non-admin users

  def index #function to create index of all elections
    @elections = Election.all
  end

  def show #function to show specific election
    @election = Election.find(params[:id])
  end

  def new #function to create new election
    @election = Election.new
  end

  def edit #function to edit election details
    @election = Election.find(params[:id])
  end

  def create #function referencing new to create new election
    @election = Election.new(election_params)

    if @election.save
      redirect_to @election
    else
      render 'new'
    end
  end

  def destroy #function to delete election
    @election = Election.find(params[:id])
    @election.destroy

    redirect_to elections_path
  end

  def update #function to update election
    @election = Election.find(params[:id])

    if @election.update(election_params)
      redirect_to @election
    else
      render 'edit'
    end
  end

  private
  def election_params #function defining parameters for an election
    params.require(:election).permit(:election_title, :election_date, :election_type, :description)
  end
end
