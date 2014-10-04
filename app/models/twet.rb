class Twet < ActiveRecord::Base
  belongs_to :user
  belongs_to :original_user, class_name: "User", foreign_key: "original_user_id"

  validates :content, :presence => true, :length => { :minimum => 2, :maximum => 140 }
  validates :user, :presence => true

  # Gets all twets made by the users referenced by the ids passed, starting with the
  # most recent twet made.
  #
  def self.by_user_ids(*ids)
    where(:user_id => ids.flatten.compact.uniq).order('created_at DESC')
  end
end
