class Job < ActiveRecord::Base
  extend Enumerize
  STATUSES = [:draft, :published, :archived]
  enumerize :state, in: STATUSES
  belongs_to :organization
  scope :published, -> { where(state: 'published') }
end
