class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.integer :channleID
      t.string :channelName
      t.string :title
      t.string :subtitle
      t.text :imageSrc
      t.string :tags
      t.text :description
      t.date :addtime
      t.integer :hits
      t.string :author
      t.string :source
      t.text :linkUrl
      t.text :content
      t.text :fileSrc
      t.text :videoSrc
      t.integer :ifhot
      t.integer :ifrecommend
      t.integer :iftop
      t.integer :sort
      t.integer :status

      t.timestamps
    end
  end
end
