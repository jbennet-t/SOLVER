# Project name: SOLVER
# Description: Create webapp that encourages students to vote and register to vote. Presents information
# about how to register and vote, and list of upcoming elections and candidates for those elections.
# Filename: candidates.rb
# Description: model for candidates MVC structure
# Last modified on: 11/24/2019

class Candidates < ApplicationRecord
  validates :name, presence: true, #must have name to submit
            length: {minimum: 5}
  belongs_to :election, optional: true #association - candidate belong to election

end
