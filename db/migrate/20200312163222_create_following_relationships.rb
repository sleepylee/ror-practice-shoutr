class CreateFollowingRelationships < ActiveRecord::Migration[6.0]
  def change
    create_table :following_relationships do |t|
      t.references :follower, null: false, index: true, foreign_key: { to_table: :users }
      t.references :followed_user, null: false, index: true, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
