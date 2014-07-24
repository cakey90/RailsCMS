require 'test_helper'

class ChannelsControllerTest < ActionController::TestCase
  setup do
    @channel = channels(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:channels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create channel" do
    assert_difference('Channel.count') do
      post :create, channel: { addtime: @channel.addtime, channelName: @channel.channelName, content: @channel.content, description: @channel.description, fid: @channel.fid, fileSrc: @channel.fileSrc, group: @channel.group, hits: @channel.hits, imageSrc: @channel.imageSrc, sort: @channel.sort, status: @channel.status, tags: @channel.tags, url: @channel.url, videoSrc: @channel.videoSrc }
    end

    assert_redirected_to channel_path(assigns(:channel))
  end

  test "should show channel" do
    get :show, id: @channel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @channel
    assert_response :success
  end

  test "should update channel" do
    patch :update, id: @channel, channel: { addtime: @channel.addtime, channelName: @channel.channelName, content: @channel.content, description: @channel.description, fid: @channel.fid, fileSrc: @channel.fileSrc, group: @channel.group, hits: @channel.hits, imageSrc: @channel.imageSrc, sort: @channel.sort, status: @channel.status, tags: @channel.tags, url: @channel.url, videoSrc: @channel.videoSrc }
    assert_redirected_to channel_path(assigns(:channel))
  end

  test "should destroy channel" do
    assert_difference('Channel.count', -1) do
      delete :destroy, id: @channel
    end

    assert_redirected_to channels_path
  end
end
