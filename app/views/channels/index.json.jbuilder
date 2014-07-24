json.array!(@channels) do |channel|
  json.extract! channel, :id, :channelName, :fid, :sort, :url, :imageSrc, :fileSrc, :videoSrc, :hits, :content, :tags, :description, :addtime, :group, :status
  json.url channel_url(channel, format: :json)
end
