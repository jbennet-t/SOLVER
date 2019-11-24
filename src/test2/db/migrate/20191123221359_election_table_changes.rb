class ElectionTableChanges < ActiveRecord::Migration[5.2]
  def change
    rename_column :elections, :title, :election_title
    rename_column :elections, :text, :description
  end
end
