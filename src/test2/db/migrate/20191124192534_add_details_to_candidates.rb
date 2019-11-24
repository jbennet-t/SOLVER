class AddDetailsToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :political_affiliation, :string
  end
end
