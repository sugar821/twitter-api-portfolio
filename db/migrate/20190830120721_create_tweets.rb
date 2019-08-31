class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.boolean :favorite

      t.timestamps
    end
  end
end
