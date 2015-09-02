class AddUrlToEffortLog < ActiveRecord::Migration
  def change
  	add_column :effort_logs, :url, :text
  end
end
