# Project name: SOLVER
# Description: Create webapp that encourages students to vote and register to vote. Presents information
# about how to register and vote, and list of upcoming elections and candidates for those elections.
# Filename: election.rb
# Description: model for candidates MVC structure, set up associations and validation
# Last modified on: 11/24/2019

class Election < ApplicationRecord
  has_many :candidates #association - election has many candidates

  validates :election_title, presence: true, #title, type, date, and description must be present to submit/edit election
            length: {minimum: 5}
  validates :election_type, presence: true
  #validates :election_date_must_be_future, presence: true
  validates :description, presence: true


  def election_date_must_be_future #function to validate date
    if election_date.present? && election_date < Date.today
      errors.add(:election_date, "cannot be in the past")
      not_in_past = true
    end
  end

end
