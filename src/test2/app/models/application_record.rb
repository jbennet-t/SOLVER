# Project name: SOLVER
# Description: Create webapp that encourages students to vote and register to vote. Presents information
# about how to register and vote, and list of upcoming elections and candidates for those elections.
# Filename: application_record.rb
# Description: model for application MVC structure
# Last modified on: 11/24/2019

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
