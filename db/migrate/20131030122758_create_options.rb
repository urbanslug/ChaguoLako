class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :name
      t.references :poll, index: true

      t.timestamps
    end
  end
end
