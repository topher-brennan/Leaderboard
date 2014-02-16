class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :current_points
      t.integer :user_id
      t.integer :last_week_points
      t.integer :team_id

      t.timestamps
    end
  end
end
