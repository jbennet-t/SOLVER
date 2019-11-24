class AddElectionToCandidate < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :attached_election, :string
  end
end
