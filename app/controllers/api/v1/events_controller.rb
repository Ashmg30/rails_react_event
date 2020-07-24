module Api::V1
  class EventsController < ApplicationController

    before_action :get_event, only: [:show, :edit, :update, :destroy]
    respond_to :json

    def index
      respond_with Event.order(event_date: :DESC)
    end

    def show
      respond_with @event
    end

    def create
      respond_with :api, Event.create(event_params)
    end

    def destroy
      respond_with @event.destroy
    end

    def update
      @event.update(event_params)
      respond_with Event, json: @event
    end

    private

    def event_params
      params.require(:event).permit(
        :id,
        :event_type,
        :event_date,
        :title,
        :speaker,
        :host,
        :published
      )
    end

    def set_event
      @event = Event.find(params[:id])
    end

  end
end
