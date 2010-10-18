class CreateInternetbranchsignups < ActiveRecord::Migration
  def self.up
    create_table :internetbranchsignups do |t|
      t.string :agree

      t.timestamps
    end
  end

  def self.down
    drop_table :internetbranchsignups
  end
end
