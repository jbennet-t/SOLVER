# Project name: SOLVER
# Description: Create webapp that encourages students to vote and register to vote. Presents information
# about how to register and vote, and list of upcoming elections and candidates for those elections.
# Filename: user.rb
# Description: model for user MVC structure, imported from devise
# Last modified on: 11/24/2019

class User < ApplicationRecord #devise user object
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
