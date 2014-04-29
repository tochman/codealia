class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :title
      t.text :descr
      t.string :resource
      t.integer :order
      t.references :workshop, polymorphic: true, index: true

      t.timestamps
    end
  end
end
