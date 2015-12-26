class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.references :member, index: true, foreign_key: true
      t.datetime :wk_day
      t.datetime :arrival
      t.datetime :departure

      t.timestamps null: false
    end
  end
end
