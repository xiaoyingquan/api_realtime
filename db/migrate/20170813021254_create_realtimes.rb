class CreateRealtimes < ActiveRecord::Migration[5.0]
  def change
    create_table :realtimes do |t|
      t.string :_id
      t.string :shortName
      t.string :ZRSP
      t.string :company
      t.string :operName
      t.string :upDate
      t.timestamps
    end

    add_index :realtimes, :_id
  end
end
