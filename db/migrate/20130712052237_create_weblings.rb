class CreateWeblings < ActiveRecord::Migration
  def change
    create_table :weblings do |t|
      t.text :URL
      t.text :Description

      t.timestamps
    end
  end
end
