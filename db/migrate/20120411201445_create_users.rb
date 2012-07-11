class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string          :ww_id
      t.string          :email
      t.integer         :facebook_id, :limit => 8
      t.string          :first_name
      t.string          :last_name
      t.string          :login_ip
      t.string          :password_new
      t.string          :alias
      t.timestamps

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Trackable
      t.integer  :sign_in_count, :default => 0
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip

      ## Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email # Only if using reconfirmable

      ## Database Authenticable
      t.string :email,              :null => false, :default => ""
      t.string :encrypted_password, :null => false, :default => ""

      ## Rememberable
      #t.datetime :remember_created_at

      ## Encryptable
      # t.string :password_salt

      ## Lockable
      # t.integer  :failed_attempts, :default => 0 # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      # Token authenticatable
      # t.string :authentication_token

      ## Invitable
      # t.string :invitation_token
    end

    add_index :users, :email,                :unique => true
    add_index :users, :reset_password_token, :unique => true
    add_index :users, :confirmation_token,   :unique => true
    # add_index :users, :unlock_token,         :unique => true
    # add_index :users, :authentication_token, :unique => true

  end

  def self.down
    drop_table :users
  end
end
