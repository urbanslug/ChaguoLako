class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :option, index: true
      t.references :voter, index: true

      t.timestamps
    end
  end
end
