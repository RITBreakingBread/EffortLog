class CreateSlackObjects < ActiveRecord::Migration
  def change
    create_table :slack_objects do |t|
      t.string :user_id
      t.string :user_name
      t.string :team_id
      t.string :team_domain
      t.string :channel_id
      t.string :channel_name

      t.timestamps null: false
    end
    add_index :slack_objects, :user_id
  end
end
