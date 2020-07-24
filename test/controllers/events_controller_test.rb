require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @story = events(:one)
  end

  test "should get index" do
    get 'api/v1/events'
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post "api/v1/events", params: { events: { event_type: @event.event_type, title: @event.title , event_date: @event.event_date, host: @event.host, speaker: @event.speaker } }
    end

    assert_response :success
  end

  test "should update event" do
    patch story_url(@event), params: { story: { event_type: @event.event_type, title: @story.title } }
    assert_response :success
  end

end
