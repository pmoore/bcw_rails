class CreateApiLogsTable < ActiveRecord::Migration
  def self.up
    create_table :api_logs do |t|
      t.string            :url
      t.float             :execution_time
      t.integer           :http_response_code
      t.timestamps
    end
  end

  def self.down
    drop_table :api_logs
  end
end
