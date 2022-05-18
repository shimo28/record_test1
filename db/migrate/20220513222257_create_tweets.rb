class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.integer :time_record  ,null: false
      t.integer :year_record   ,null: false
      t.integer :month_record  ,null: false
      t.integer :day_record   ,null: false

      t.timestamps
    end
  end
end
