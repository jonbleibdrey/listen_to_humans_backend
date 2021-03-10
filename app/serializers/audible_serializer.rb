class AudibleSerializer < ActiveModel::Serializer
  attributes :id, :title, :by, :language, :audio_file, :track
  has_many :reviews

  include Rails.application.routes.url_helpers

def track
  rails_blob_path(object.track, only_path: true) if object.track.attached?
end

end
