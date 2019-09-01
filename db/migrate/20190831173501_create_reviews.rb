class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :title, null:false, lenght:50
      t.text :body, null:false, lenght:200
      t.references :tweet
      t.references :user

      t.timestamps
    end
    
    add_index :reviews, [:tweet_id, :user_id], unique: true
    
  end
end

