class AddUserIdToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :uid, :reference
    add_column :tweets, :content, :string
  end
end
