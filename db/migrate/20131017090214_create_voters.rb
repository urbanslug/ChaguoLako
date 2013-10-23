class CreateVoters < ActiveRecord::Migration
  def change
    create_table :voters do |t|
      t.string :email
      t.string :username
      t.string :password
      t.string :phone
      t.boolean :approved

      t.timestamps
    end
  end
end
