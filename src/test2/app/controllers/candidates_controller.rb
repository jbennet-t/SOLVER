# Project name: SOLVER
# Description: Create webapp that encourages students to vote and register to vote. Presents information
# about how to register and vote, and list of upcoming elections and candidates for those elections.
# Filename: candidates_controller
# Description: Controller for candidate MVC structure
# Last modified on: 11/24/2019


class CandidatesController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index] #authenticate user before all actions

  http_basic_authenticate_with name: "admin", password: "password", except: [:index, :show] #restrict view of non-admin user

  def index #function to create index of all candidates
    @candidates = Candidates.all
  end

  def show #function to show specific candidate
    @candidates = Candidates.find(params[:id])
  end

  def new #function to create new candidate
    @candidates = Candidates.new
  end

  def edit #function to edit candidate
    @candidates = Candidates.find(params[:id])
  end

  def create #function that references new to create new candidate
    @candidates = Candidates.new(candidate_params)

    if @candidates.save
      redirect_to @candidates
    else
      render 'new'
    end
  end

  def destroy #function to delete candidate
    @candidates = Candidates.find(params[:id])
    @candidates.destroy

    redirect_to candidates_path
  end

  def update #function to update candidate
    @candidates = Candidates.find(params[:id])

    if @candidates.update(candidate_params)
      redirect_to @candidates
    else
      render 'edit'
    end
  end

  private
  def candidate_params #function defining parameters for a candidate
    params.require(:candidates).permit(:name, :political_affiliation, :info)
  end
end
