class AddCompletedMinutesAndCommitsToLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :logs, :completed_minutes, :integer
    add_column :logs, :commits, :integer
  end
end
