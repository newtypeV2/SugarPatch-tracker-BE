class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :sugar_record_id
      t.string :text
      t.datetime :date

      t.timestamps
    end
  end
end
