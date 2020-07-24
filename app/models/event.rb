class Event < ApplicationRecord

    validates :event_type, presence: { message: "must enter an event type" }
    validates :event_date, presence: { message: "must enter a valid date" }

    validates :title, presence: { message: "must enter a title" }
    validates :speaker, presence: { message: "must enter at least one speaker" }
    validates :host, presence: { message: "must enter at least one host" }

end
