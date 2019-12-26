class CreateSugarRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :sugar_records do |t|
      t.float :value
      t.integer :user_id
      t.datetime :date

      t.timestamps
    end
  end
end
