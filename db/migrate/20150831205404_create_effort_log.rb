class CreateEffortLog < ActiveRecord::Migration
  def change
    create_table :effort_logs do |t|
    	t.string :name, :null => false 
    	t.string :real_name, :null => false
    	t.datetime :start_time, :null => false
    	t.datetime :end_time, :null => false
    	t.string :comment, :null => false
    	
    	t.timestamps
    end
  end
end
