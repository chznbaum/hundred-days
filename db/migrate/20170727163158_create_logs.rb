class CreateLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :logs do |t|
      t.integer :round
      t.integer :day
      t.text :content
      t.integer :status, default: 0
      t.integer :motivation, default: 5

      t.timestamps
    end
  end
end
