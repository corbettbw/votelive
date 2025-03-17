class CreateVotes < ActiveRecord::Migration[8.0]
  def change
    create_table :votes do |t|
      t.string :vote_type

      t.timestamps
    end
  end
end
