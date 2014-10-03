class CreateArctEdits < ActiveRecord::Migration
  def change
    create_table :arct_edits do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
