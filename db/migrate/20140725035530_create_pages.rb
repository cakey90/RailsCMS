class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :pageName
      t.integer :fid
      t.integer :sort
      t.integer :topLevel
      t.text :icon
      t.text :linkUrl
      t.text :description

      t.timestamps
    end
  end
end
