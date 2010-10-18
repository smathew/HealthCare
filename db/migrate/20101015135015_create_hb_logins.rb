class CreateHbLogins < ActiveRecord::Migration
  def self.up
    create_table :hb_logins do |t|
      t.string :account_number
      t.string :pin

      t.timestamps
    end
  end

  def self.down
    drop_table :hb_logins
  end
end
