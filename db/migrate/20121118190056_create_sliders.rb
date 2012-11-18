class CreateSliders < ActiveRecord::Migration
  def change
    create_table :sliders do |t|
      t.string :caption
      t.text :description

      t.timestamps
    end
  end
end
