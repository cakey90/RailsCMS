class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.string :channelName
      t.integer :fid
      t.integer :sort
      t.string :url
      t.text :imageSrc
      t.text :fileSrc
      t.text :videoSrc
      t.integer :hits
      t.text :content
      t.string :tags
      t.text :description
      t.date :addtime
      t.string :group
      t.integer :status

      t.timestamps
    end
  end
end
