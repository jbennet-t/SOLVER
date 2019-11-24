class AddDetailsToElection < ActiveRecord::Migration[5.2]
  def change
    add_column :elections, :election_date, :date
    add_column :elections, :election_type, :string
    add_column :elections, :passed, :boolean, default: false
  end
end
