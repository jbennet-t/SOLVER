class AddAssociationsToElectionsAndCandidates < ActiveRecord::Migration[5.2]
  def change
    add_reference :elections, :candidates, foreign_key: true
  end
end
