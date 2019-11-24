class CreateElections < ActiveRecord::Migration[5.2]
  def change
    create_table :elections do |t|
      t.string :election_title
      t.text :description

      t.timestamps
    end
  end
end
