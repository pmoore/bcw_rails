class CreatePartnerUsers < ActiveRecord::Migration
  def self.up
    create_table :partner_users do |t|
      t.string          :ww_id
      t.string          :external_user_id
      t.string          :email
      t.string          :first_name
      t.string          :last_name
      t.string          :alias
      t.string          :login_ip
      t.date            :wedding_date
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


    end

    add_index :partner_users, :email,                :unique => true


  end

  def self.down
    drop_table :partner_users
  end
end
