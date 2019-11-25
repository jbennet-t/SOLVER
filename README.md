# SOLVER
The goal of this project is to get students registered to vote, as well as informing people about upcoming elections, 
the politicians who are running, and what their stances are. A large percentage of the population fails to go out and 
vote for most elections, meaning that their voices are unheard. People are more likely to go out and vote if they are 
informed about the elections and what the politicians are campaigning on.

The users will have the option to input local townships and areas, and an algorithm will search through a database of
upcoming local elections, and the candidates running. The algorithm will fetch the date of voting, the candidates 
running, and a summary of their policies. The database will store a list of the local elections, candidates, and their policies.


# How To Install

### Expected Environment
Windows, Linux, or Mac OS, with at least Ruby 2.6.4 and Ruby on Rails 5.2.3 installed, as well as Git.
### Installation Instructions:
1.	Open link to above GitHub repository
2.	Open terminal window
3.	Navigate to directory you wish to install the repository in
4.	Type `git clone https://github.com/jbennet-t/SOLVER.git`
5.	Navigate to pathname: `cd /solver/src/test2`
6.	Type `rails bundle install` to install the necessary ruby gems
7.	Type `rails db:migrate` to migrate the database 
8.	If you are running locally, type `rails s` to run the server. You can now navigate to the running web app at http://localhost:3000/ in your browser. 
9.	If you are on a server, type `ip addr show eth0` to show your address. Then type `rails s -b 10.18.6.XX -p 3000`. The XX will be replaced with whatever was shown as the last digits of your IP address. (For example, server20 will be `rails s -b 10.18.6.20 -p 3000`). You can then navigate to your server in your browser (ex: http://csc415-server20.hpc.tcnj.edu:3000/.)
